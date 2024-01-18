using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace MobileMG.Services
{
    public static class ApiServices<T> where T : class
    {

        private static HttpClient client;

        public static HttpClient Client
        {
            get
            {
                if (client == null)
                {
                    client = new HttpClient();
                    client.BaseAddress = new Uri("http://127.0.0.1:5500/api/");
                }
                return client;
            }
        }

        public async static Task<List<T>> GetList(string url)
        {
            var response = await Client.GetAsync(url);
            var content = await response.Content.ReadAsStringAsync();

            var json = JsonConvert.DeserializeObject<List<T>>(content);

            return json;
            
        }


    }
}
