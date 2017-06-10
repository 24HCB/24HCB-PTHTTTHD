using DomainModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebsiteApi.Controllers
{
    public class CoSoController : ApiController
    {
        public IEnumerable<COSO> Get()
        {
            return new BusinessLayer.BusinessLayer().GetAllCoSo();
        }

        public COSO Get(int id)
        {
            //return "value";
            return new BusinessLayer.BusinessLayer().GetCoSoById(id);
        }
        public void Post([FromBody]DomainModel.COSO value)
        {
            new BusinessLayer.BusinessLayer().AddCoSo(value);
        }

        // PUT api/values/5
        public void Put(int id, [FromBody]DomainModel.COSO value)
        {
            new BusinessLayer.BusinessLayer().UpdateCoSo(value);
        }

        // DELETE api/values/5
        public void Delete([FromBody]DomainModel.COSO value)
        {
            new BusinessLayer.BusinessLayer().RemoveCoSo(value);
        }
    }
}
