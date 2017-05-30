using DomainModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
    public interface IBusinessLayer
    {
        // Department
        IList<DomainModel.TRUSO> GetAllTruSo();
        TRUSO GetTruSoByName(int id);
        void AddTruSo(params TRUSO[] TruSos);
        void UpdateTruSo(params TRUSO[] TruSos);
        void RemoveTruSo(params TRUSO[] TruSos);

        // Employee
        IList<COSO> GetCoSoByTruSoCode(int TruSoCode);
        void AddCoSo(params COSO[] CoSos);
        void UpdateCoSo(params COSO[] CoSos);
        void RemoveCoSo(params COSO[] CoSos);
    }
}
