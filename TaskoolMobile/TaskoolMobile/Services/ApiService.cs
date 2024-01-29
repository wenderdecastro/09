using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace TaskoolMobile.Services
{
    public static class ApiService<T> where T : class
    {
        private static HttpClient _client;

        public static HttpClient Client
        {
            get
            {
                if (_client == null)
                {
                    _client = new HttpClient();
                    _client.BaseAddress = new Uri("http://10.0.2.2:8090/api/");
                }
                
                return _client;
            }

        }

        public async static Task<T>Get(string url)
        {
            var request = await Client.GetAsync(url);
            request.EnsureSuccessStatusCode();
            var content = await request.Content.ReadAsStringAsync();
            return JsonConvert.DeserializeObject<T>(content);
            
        }
        public async static Task<List<T>>GetList(string url)
        {
            var request = await Client.GetAsync(url);
            request.EnsureSuccessStatusCode();
            var content = await request.Content.ReadAsStringAsync();
            return JsonConvert.DeserializeObject<List<T>>(content);
            
        }

    }
}
