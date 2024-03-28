using System;
using System.Data.Entity.Migrations;
using System.IO;
using System.Linq;
using System.Web.Http;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{

    [RoutePrefix("api")]
    public class ValuesController : ApiController
    {
        Session2Entities ctx = new Session2Entities();


        [HttpPost]
        [Route("login")]
        public IHttpActionResult Post(Employees user)
        {
            try
            {
                ctx.Configuration.LazyLoadingEnabled = false;
                return Ok(ctx.Employees.Include("People").FirstOrDefault(x => x.Email == user.Email && x.Password == user.Password));

            }
            catch (System.Exception e)
            {

                return BadRequest(e.Message);

            }

        }
        [HttpGet]
        [Route("documentos/{id}")]
        public IHttpActionResult GetDoc(int id)
        {
            try
            {
                ctx.Configuration.LazyLoadingEnabled = false;
                return Ok(ctx.Documents.Include("DocumentTypes").Where(x => x.PersonID == id).ToList());
            }
            catch (System.Exception e)
            {
                return BadRequest(e.Message);

            }

        }

        [HttpGet]
        [Route("tiposdoc")]
        public IHttpActionResult Tipos()
        {
            try
            {
                ctx.Configuration.LazyLoadingEnabled = false;
                return Ok(ctx.DocumentTypes.ToList());
            }
            catch (System.Exception e)
            {
                return BadRequest(e.Message);

            }

        }

        [HttpPost]
        [Route("saveattachment")]
        public IHttpActionResult Tipos(Documents doc)
        {
            try
            {
                ctx.Configuration.LazyLoadingEnabled = false;
                var fileName = $"{doc.ID}.{doc.Attachment.Split('.').Last()}";
                var caminho = $"{AppContext.BaseDirectory}Images\\Documents";
                Console.WriteLine(caminho);
                File.WriteAllBytes(caminho, doc.Photo);
                doc.Attachment = fileName;
                ctx.Documents.AddOrUpdate(doc);
                ctx.SaveChanges();
                return Ok();
            }
            catch (System.Exception e)
            {
                return BadRequest(e.Message);

            }

        }

    }
}
