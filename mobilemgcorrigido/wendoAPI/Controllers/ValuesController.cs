using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace wendoAPI.Controllers
{
    [RoutePrefix("api")]
    public class ValuesController : ApiController
    {
        SessaoMobileEntities ctx = new SessaoMobileEntities();

        [HttpGet]
        [Route("relatos")]
        public IHttpActionResult GetList()
        {
            ctx.Configuration.LazyLoadingEnabled = false;

            var relatos = ctx.Relatos.OrderBy(x => x.id).ToList();

            foreach (var relato in relatos)
            {
                if(relato.imagem == null)
                {
                    relato.imagem = "default";
                }else
                relato.imagem = relato.imagem.Split('.')[0];

                
                relato.Usuario = new Usuario
                {
                    nome = "Anônimo",
                    telefone = "(##) #####-####",
                    email = "###@###"

                };
                if (relato.usuarioid != null)
                {
                    relato.Usuario = ctx.Usuario.Find(relato.usuarioid);
                }
            }

            return Ok(relatos);

        }

        [HttpGet]
        [Route("relatos/{id}")]
        public IHttpActionResult Get(int id)
        {
            ctx.Configuration.LazyLoadingEnabled = false;

            var relato = ctx.Relatos.FirstOrDefault(x => x.id == id);

            relato.imagem = relato.imagem.Split('.')[0];

            if (relato.usuarioid == null)
            {
                relato.Usuario = new Usuario
                {
                    nome = "Anônimo",
                    telefone = "(##) #####-####",
                    email = "###@###"

                };
            }
            return Ok(relato);
        }


        [HttpPost]
        [Route("login")]
        public IHttpActionResult Post(Usuario usuario)
        {
            try
            {
                ctx.Configuration.LazyLoadingEnabled = false;
                return Ok(ctx.Usuario.FirstOrDefault(x => x.email == usuario.email && x.senha == usuario.senha));
            }
            catch (Exception e)
            {

                return BadRequest(e.Message);
            }

        }
        [HttpPost]
        [Route("relatos/add")]
        public IHttpActionResult AddorUpdate(Relatos relato)
        {
            try
            {
                ctx.Configuration.LazyLoadingEnabled = false;

                if(relato.usuarioid == 0)
                {
                    relato.usuarioid = null;

                }

                ctx.Relatos.AddOrUpdate(relato);
                ctx.SaveChanges();
                return Ok(ctx.Relatos.Find(relato.id));
            }
            catch (Exception e)
            {

                return BadRequest(e.Message);
            }

        }

        [HttpGet]
        [Route("relatos/delete/{id}")]
        public IHttpActionResult Delete(int id)
        {
            try
            {
                var relato = ctx.Relatos.FirstOrDefault(x => x.id == id);
                if (relato != null)
                {
                    ctx.Relatos.Remove(relato);
                    ctx.SaveChanges();
                }
                return Ok(relato);

            }
            catch (Exception)
            {

                throw;
            }

        }
    }
}
