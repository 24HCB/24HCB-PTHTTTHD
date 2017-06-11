using DomainModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebsiteApi.Controllers
{
    public class PhanPhoiController : ApiController
    {
        // GET api/values
        public IEnumerable<PHANPHOI> Get()
        {
            return new BusinessLayer.BusinessLayer().GetAllPhanPhoi();
        }

        // GET api/values/5
        public IEnumerable<PHANPHOI> Get(int MaBonChua)
        {
            //return "value";
            return new BusinessLayer.BusinessLayer().GetPhanPhoiByBonChuaCode(MaBonChua);
        }
    }
}
