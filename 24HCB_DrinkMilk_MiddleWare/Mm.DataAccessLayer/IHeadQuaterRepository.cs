using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Mm.DomainModel;

namespace Mm.DataAccessLayer
{
    public interface IHeadQuaterRepository : IGenericDataRepository<TRUSO> { }
    public interface IBranchRepository : IGenericDataRepository<COSO> { }
    public class HeadQuaterRepository : GenericDataRepository<TRUSO>, IHeadQuaterRepository { }
    public class BranchRepository : GenericDataRepository<COSO>, IBranchRepository { }
}
