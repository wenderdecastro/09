using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace wendoAPP.Services
{
    public static class ApiService<T> where T : class
    {

        private static HttpClient client;

        public static HttpClient Client
        {
            get
            {
                if (client == null) {
                    client = new HttpClient();
                    client.BaseAddress = new Uri("http://10.0.2.2:5500/api/");
                }
                return client;
            }

        }

        public static async Task<T> Get(string url)
        {
            var request = await Client.GetAsync(url);
            request.EnsureSuccessStatusCode();
            var data = await request.Content.ReadAsStringAsync();
            return JsonConvert.DeserializeObject<T>(data);
        }

        public static async Task<T> Post(string url, T obj)
        {
            var jsonP = JsonConvert.SerializeObject(obj);
            var dataP = new StringContent(jsonP, Encoding.UTF8, "application/json");


            var request = await Client.PostAsync(url, dataP);
            request.EnsureSuccessStatusCode();
            var data = await request.Content.ReadAsStringAsync();
            return JsonConvert.DeserializeObject<T>(data);
        }

        public static async Task<List<T>> GetList(string url)
        {
            var request = await Client.GetAsync(url);
            request.EnsureSuccessStatusCode();
            var data = await request.Content.ReadAsStringAsync();
            return JsonConvert.DeserializeObject<List<T>>(data);

        }
    }
}
