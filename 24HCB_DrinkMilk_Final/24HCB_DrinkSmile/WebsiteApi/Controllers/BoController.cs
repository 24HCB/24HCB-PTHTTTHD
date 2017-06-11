using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using DomainModel;

namespace WebsiteApi.Controllers
{
    public class BoController : ApiController
    {
        // GET api/values
        public IEnumerable<BO> Get()
        {
            return new BusinessLayer.BusinessLayer().GetAllBo();
        }
        public BO Get(int id)
        {
            //return "value";
            return new BusinessLayer.BusinessLayer().GetBoById(id);
        }

        // POST api/values
        public void Post([FromBody]DomainModel.BO value)
        {
            new BusinessLayer.BusinessLayer().AddBo(value);
        }

        // PUT api/values/5
        public void Put(int id, [FromBody]DomainModel.BO value)
        {
            new BusinessLayer.BusinessLayer().UpdateBo(value);
        }

        // DELETE api/values/5
        public void Delete([FromBody]DomainModel.BO value)
        {
            new BusinessLayer.BusinessLayer().RemoveBo(value);
        }
    }
}
