using Newtonsoft.Json;

using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace App2.Services
{
    public static class ApiService<T> where T : class
    {
        private static HttpClient client;

        public static HttpClient Client
        {
            get
            {
                if (client == null)
                {
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
            var content = await request.Content.ReadAsStringAsync();
            return JsonConvert.DeserializeObject<T>(content);
        }
        public static async Task<List<T>> GetList(string url)
        {
            var request = await Client.GetAsync(url);
            request.EnsureSuccessStatusCode();
            var content = await request.Content.ReadAsStringAsync();
            return JsonConvert.DeserializeObject<List<T>>(content);
        }
        public static async Task<T> Post(string url, T obj)
        {
            var jsonp = JsonConvert.SerializeObject(obj);
            var datap = new StringContent(jsonp, Encoding.UTF8, "application/json");


            var request = await Client.PostAsync(url, datap);
            request.EnsureSuccessStatusCode();
            var content = await request.Content.ReadAsStringAsync();
            return JsonConvert.DeserializeObject<T>(content);
        }

        public static async Task<object> Postimg(string url, object obj)
        {
            var jsonp = JsonConvert.SerializeObject(obj);
            var datap = new StringContent(jsonp, Encoding.UTF8, "application/json");


            var request = await Client.PostAsync(url, datap);
            request.EnsureSuccessStatusCode();
            var content = await request.Content.ReadAsStringAsync();
            return JsonConvert.DeserializeObject(content);
        }



    }
}
