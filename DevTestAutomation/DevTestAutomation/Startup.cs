using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DevTestAutomation.Startup))]
namespace DevTestAutomation
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
