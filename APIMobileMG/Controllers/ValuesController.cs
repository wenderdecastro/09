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

            var lista = ctx.Relatos.Select(x => new Relatos
            {
                id = x.id,
                relato = x.relato,
                imagem = x.imagem,
                latitude = x.latitude,
                longitude = x.longitude,
                usuarioid = x.usuarioid,

                Usuario = new Usuario
                {
                    nome = x.Usuario.nome
                }

            });



            return Ok(lista);

        }
    }
}
