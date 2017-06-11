using DomainModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebsiteApi.Controllers
{
    public class BonChuaController : ApiController
    {
        // GET api/values
        public IEnumerable<BONCHUA> Get()
        {
            return new BusinessLayer.BusinessLayer().GetAllBonChua();
        }

        // GET api/values/5
        public IEnumerable<BONCHUA> Get(int CoSoCode)
        {
            //return "value";
            return new BusinessLayer.BusinessLayer().GetBonChuaByCoSoCode(CoSoCode);
        }
    }
}
