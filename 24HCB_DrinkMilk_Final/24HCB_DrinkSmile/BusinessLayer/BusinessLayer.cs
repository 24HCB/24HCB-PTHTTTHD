using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DomainModel;

namespace BusinessLayer
{
    public class BusinessLayer : IBusinessLayer
    {
        private readonly ITruSoRepository _deptRepository;
        private readonly ICoSoRepository _emplRepository;

        public BusinessLayer()
        {
            _deptRepository = new TruSoRepository();
            _emplRepository = new CoSoRepository();
        }

        public IList<DomainModel.TRUSO> GetAllTruSo()
        {
            return _deptRepository.GetAll();
        }

        public DomainModel.TRUSO GetTruSoByName(int id)
        {
            return _deptRepository.GetSingle(d => d.MaTruSo.Equals(id));
        }

        public void AddTruSo(params DomainModel.TRUSO[] TruSos)
        {
            _deptRepository.add(TruSos);
        }

        public void UpdateTruSo(params DomainModel.TRUSO[] TruSos)
        {
            _deptRepository.update(TruSos);
        }

        public void RemoveTruSo(params DomainModel.TRUSO[] TruSos)
        {
            _deptRepository.remove(TruSos);
        }

        public IList<DomainModel.COSO> GetAllCoSo()
        {
            return _emplRepository.GetAll();
        }

        public IList<DomainModel.COSO> GetCoSoByTruSoCode(int TruSoCode)
        {
            return _emplRepository.GetList(d => d.MaTruSo.Equals(TruSoCode));
        }

        public void AddCoSo(params DomainModel.COSO[] CoSos)
        {
            _emplRepository.add(CoSos);
        }

        public void UpdateCoSo(params DomainModel.COSO[] CoSos)
        {
            _emplRepository.update(CoSos);
        }

        public void RemoveCoSo(params DomainModel.COSO[] CoSos)
        {
            _emplRepository.remove(CoSos);
        }
    }
}

