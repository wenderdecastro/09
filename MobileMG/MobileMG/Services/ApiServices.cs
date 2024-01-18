using MobileMG.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
                    client.BaseAddress = new Uri("http://10.0.2.2:5500/api/");
                }
                return client;
            }
        }

        public async static Task<T> Login(LoginViewModel login)
        {

            var jsonLogin = JsonConvert.SerializeObject(login);
            var response = await Client.PostAsync("login", new StringContent(jsonLogin, Encoding.UTF8, "application/json"));

            if (response.IsSuccessStatusCode)
            {
                var jsonResponse = await response.Content.ReadAsStringAsync();
                var result = JsonConvert.DeserializeObject<T>(jsonResponse);
                return result;
            }
            return null;
        }

        public async static Task<List<T>> GetRelatos()
        {
            var response = await Client.GetAsync("relatos");
            var jsonResponse = await response.Content?.ReadAsStringAsync();
            return JsonConvert.DeserializeObject<List<T>>(jsonResponse);

        }


    }
}
