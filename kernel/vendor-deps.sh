set -euo pipefail

cd "$src"

export CARGO_HOME="$TMPDIR/cargo-home"
mkdir -p "$CARGO_HOME"
export CARGO_NET_GIT_FETCH_WITH_CLI=true
export GIT_SSL_NO_VERIFY=1
export PATH="$(dirname "$git"):$PATH"

MANIFEST="$manifestPath"
VENDOR_DIR="$out/vendor"
mkdir -p "$VENDOR_DIR"

# --- Step 1: Parse [patch.crates-io] entries ---
declare -A PATCH_GIT_URLS PATCH_GIT_REVS
PATCHED_CRATES=()

while IFS= read -r line; do
  [[ -z "$line" || "$line" =~ ^# ]] && continue
  name=$(echo "$line" | sed 's/ *=.*//' | xargs)
  url=$(echo "$line" | grep -oP 'git\s*=\s*"\K[^"]+')
  rev=$(echo "$line" | grep -oP 'rev\s*=\s*"\K[^"]+')
  if [[ -n "$name" && -n "$url" && -n "$rev" ]]; then
    PATCH_GIT_URLS[$name]="$url"
    PATCH_GIT_REVS[$name]="$rev"
    PATCHED_CRATES+=("$name")
  fi
done < <(awk '/^\[patch\.crates-io\]/,/^[^\[]/' "$MANIFEST" | grep -E '^\s*\w+\s*=.*git' || true)

echo "Patched crates: ${PATCHED_CRATES[*]:-none}"

# --- Step 2: Create writable copy of needed source in TMPDIR ---
# Copy only the directories that contain Cargo manifests and their sources.
CLEAN_DIR="$TMPDIR/clean-root"
MANIFEST_DIR="$(dirname "$MANIFEST")"  # e.g. "motherboardm"

# Find all directories containing a Cargo.toml (the manifest + any path deps).
# For motherboardm, we need: motherboardm/ and ../protocol/.
# Walk path = "..." entries to discover all needed dirs.
declare -A NEEDED_DIRS
NEEDED_DIRS["$MANIFEST_DIR"]=1

while IFS= read -r dep_line; do
  rel_path=$(echo "$dep_line" | grep -oP 'path\s*=\s*"\K[^"]+')
  if [[ -n "$rel_path" ]]; then
    # Resolve relative to the manifest directory.
    resolved=$(cd "$MANIFEST_DIR" && realpath -m "$rel_path")
    # Make relative to $src root.
    rel_to_src=$(realpath --relative-to="$src" "$resolved")
    NEEDED_DIRS["$rel_to_src"]=1
  fi
done < <(grep -E 'path\s*=\s*"' "$src/$MANIFEST" || true)

# Also check path deps from protocol's manifest (recursion depth 1).
PROTO_MANIFEST="$src/protocol/Cargo.toml"
if [[ -f "$PROTO_MANIFEST" ]]; then
  while IFS= read -r dep_line; do
    rel_path=$(echo "$dep_line" | grep -oP 'path\s*=\s*"\K[^"]+')
    if [[ -n "$rel_path" ]]; then
      resolved=$(cd "protocol" && realpath -m "$rel_path")
      rel_to_src=$(realpath --relative-to="$src" "$resolved")
      NEEDED_DIRS["$rel_to_src"]=1
    fi
  done < <(grep -E 'path\s*=\s*"' "$PROTO_MANIFEST" || true)
fi

echo "Needed directories: ${!NEEDED_DIRS[*]}"

for dir in "${!NEEDED_DIRS[@]}"; do
  mkdir -p "$CLEAN_DIR/$dir"
  cp -r "$src/$dir"/* "$CLEAN_DIR/$dir/" 2>/dev/null || true
  chmod -R u+w "$CLEAN_DIR/$dir"
done

# Strip [patch.crates-io] from the manifest in the clean copy.
awk '
  /^\[patch\.crates-io\]/ { skip=1; next }
  /^\[/ && skip { skip=0 }
  !skip
' "$CLEAN_DIR/$MANIFEST" > "$CLEAN_DIR/$MANIFEST.tmp"
mv "$CLEAN_DIR/$MANIFEST.tmp" "$CLEAN_DIR/$MANIFEST"

echo "--- Clean manifest ---"
cat "$CLEAN_DIR/$MANIFEST"
echo "---"

# --- Step 3: Generate lockfile and vendor crates.io deps ---
"$cargo" generate-lockfile --manifest-path "$CLEAN_DIR/$MANIFEST" 2>/dev/null || true
"$cargo" vendor --manifest-path "$CLEAN_DIR/$MANIFEST" "$VENDOR_DIR"

# --- Step 4: Remove crates.io versions of patched crates ---
for name in "${PATCHED_CRATES[@]}"; do
  echo "Removing crates.io version of $name from vendor"
  rm -rf "$VENDOR_DIR/$name"
done

# --- Step 5: Fetch each patched crate from git and place into vendor ---
for name in "${PATCHED_CRATES[@]}"; do
  url="${PATCH_GIT_URLS[$name]}"
  rev="${PATCH_GIT_REVS[$name]}"
  tmprepo="$TMPDIR/repo-$name"

  echo "Fetching $name from $url @ $rev"
  rm -rf "$tmprepo"
  git clone --quiet --config http.sslVerify=false "$url" "$tmprepo"
  git --git-dir="$tmprepo" --work-tree="$tmprepo" checkout --quiet "$rev"
  git --git-dir="$tmprepo" clean -fdX --quiet

  if [[ -d "$tmprepo/$name" ]]; then
    cp -r "$tmprepo/$name" "$VENDOR_DIR/$name"
    echo "Placed $name into vendor"
  else
    echo "ERROR: $name not found in $tmprepo"
    ls "$tmprepo"
    exit 1
  fi
done

# --- Step 6: Write cargo config ---
mkdir -p "$out/.cargo"
cat > "$out/.cargo/config.toml" <<'EOF'
[source.crates-io]
replace-with = "vendored-sources"

[source.vendored-sources]
directory = "vendor"
EOF

echo "Vendor directory contents:"
ls "$VENDOR_DIR"
echo "Done."
