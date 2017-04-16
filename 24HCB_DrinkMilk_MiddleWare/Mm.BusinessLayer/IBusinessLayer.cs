using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Mm.DataAccessLayer;
using Mm.DomainModel;

namespace Mm.BusinessLayer
{
    public interface IBusinessLayer
    {
        // HeadQuater
        IList<TRUSO> GetAllHeadQuater();
        TRUSO GetTruSoByName(string name);
        void AddTruSo(params TRUSO[] TruSo);
        void UpdateTruSo(params TRUSO[] TruSo);
        void RemoveTruSo(params TRUSO[] TruSo);

        // Branch
        IList<COSO> GetBranchByHQName(string name);
        void AddCoSo(params COSO[] coso);
        void UpdateCoSo(params COSO[] coso);
        void RemoveCoSo(params COSO[] coso);

    }
}
