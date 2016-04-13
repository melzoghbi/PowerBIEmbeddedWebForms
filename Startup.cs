using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PBIEmbeddedWebForms.Startup))]
namespace PBIEmbeddedWebForms
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
