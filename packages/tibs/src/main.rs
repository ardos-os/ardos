use glow::HasContext;
use tab_app_framework::{
    Config, GlApplication, GlEventContext, GlInitContext, GlTabAppFramework, RenderEvent,
    RenderMode,
};

struct Tibs {
    ready: bool,
}

impl GlApplication for Tibs {
    fn init(_ctx: &mut GlInitContext) -> anyhow::Result<Self> {
        Ok(Self { ready: false })
    }

    fn on_render(&mut self, ctx: &mut GlEventContext<'_, '_, Self>, _event: RenderEvent) {
        let gl = ctx.gl().glow();
        unsafe {
            gl.clear_color(0.03, 0.03, 0.04, 1.0);
            gl.clear(glow::COLOR_BUFFER_BIT);
        }

        if !self.ready && ctx.session_ready().is_ok() {
            self.ready = true;
        }
    }
}

fn main() -> anyhow::Result<()> {
    let mut app = GlTabAppFramework::<Tibs>::init(|config: &mut Config| {
        config.opengl_version(3, 3);
        config.set_render_mode(RenderMode::Eager);
    })?;
    app.run()?;
    Ok(())
}
