using APIMobileMG.Models;
using APIMobileMG.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace APIMobileMG.Controllers
{
    [RoutePrefix("api")]
    public class ValuesController : ApiController
    {
        SessaoMobileEntities1 ctx = new SessaoMobileEntities1();

        [HttpPost]
        [Route("login")]
        public IHttpActionResult Post(LoginViewModel login)
        {
            try
            {
                var usuario = ctx.Usuario.FirstOrDefault(x => x.email == login.email && x.senha == login.senha);

                return Ok(usuario);
            }
            catch (Exception e)
            {

                return BadRequest(e.Message);
            }

        }

        [HttpGet]
        [Route("relatos")]
        public IHttpActionResult ListRelatos()
        {

            var lista = ctx.Relatos.ToList().Select(x => new RelatosViewModel
            {
                Id = x.id,
                Relato = x.relato,
                Imagem = $"{ x.imagem.Substring(0,x.imagem.Length - 4)}.jpg",
                Latitude = x.latitude,
                Longitude = x.longitude,
                UsuarioId = x.usuarioid == null ? 0 : x.usuarioid,
                NomeUsuario = x.usuarioid == null ? "Anônimo" : x.Usuario.nome,
                TelefoneUsuario = x.usuarioid == null ? "(##) #####-####" : x.Usuario.telefone,
                EmailUsuario = x.usuarioid == null ? "" : x.Usuario.email


            }).ToList();



            return Ok(lista);

        }
    }
}
