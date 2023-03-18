using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Loteria_wf.Startup))]
namespace Loteria_wf
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
