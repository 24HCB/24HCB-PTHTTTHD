using DomainModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebsiteApi.Controllers
{
    public class NhanVienController : ApiController
    {
        // GET api/values
        public IEnumerable<NHANVIEN> Get()
        {
            return new BusinessLayer.BusinessLayer().GetAllNhanVien();
        }
    }
}
