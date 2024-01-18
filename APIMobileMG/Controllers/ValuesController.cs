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
        [HttpGet]
        [Route("teste")]
        public IHttpActionResult Get()
        {
            return Ok("teste");
        }
        
    }
}
