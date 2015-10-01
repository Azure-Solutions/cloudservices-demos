using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebApplication1.Controllers
{
    public class SleepController : ApiController
    {
        // GET: api/Sleep
        public async System.Threading.Tasks.Task<string> Get()
        {
            var responseString = string.Empty;

            using (var client = new HttpClient())
            {
                var values = new Dictionary<string, string>
                {
                    //{ "arg1", "value1" },
                    //{ "arg2", "value2" }
                };

                var content = new FormUrlEncodedContent(values);

                var response = await client.PostAsync(DevTestAutomation.Properties.Settings.Default.SleepWebhookSetting, content);

                responseString = await response.Content.ReadAsStringAsync();
            }

            return responseString;

        }

        // GET: api/Sleep/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Sleep
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Sleep/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Sleep/5
        public void Delete(int id)
        {
        }
    }
}
