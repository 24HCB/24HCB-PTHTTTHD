package DrinkMilkManagement.DataAccessLayer;

import DrinkMilkManagement.POJO.CtquytrinhEntity;
import DrinkMilkManagement.POJO.QuytrinhvatsuaEntity;
import DrinkMilkManagement.Utilities.HibernateUtil;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

/**
 * Created by AnSon on 11/06/2017.
 */
public class CTQuyTrinhDAL {
    public static List<CtquytrinhEntity> getSoLuongSuaByYear(int year)
    {
        List<CtquytrinhEntity> ds = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            String hql = "select ct.maSoChip, sum(ct.soLuongSua) as slSua from CtquytrinhEntity as ct inner join QuytrinhvatsuaEntity as qt" +
            " on ct.maQuyTrinh = qt.maQuyTrinh where year(qt.ngayThucHien) = " + year +
            " group by ct.maSoChip";
            Query query = session.createQuery(hql);
            ds = query.list();
        } catch (HibernateException ex) {
            System.err.println(ex);
        } finally {
            session.close();
        }
        return ds;
    }

    public static List<CtquytrinhEntity> getSoLuongSuaByQuarter(int quarter)
    {
        List<CtquytrinhEntity> ds = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            String hql = "select ct.maSoChip, sum(ct.soLuongSua) from CtquytrinhEntity as ct, QuytrinhvatsuaEntity as qt" +
                    " where ct.maQuyTrinh = qt.maQuyTrinh and ((MONTH(qt.ngayThucHien ) - 1) DIV 3) + 1 = " + quarter +
                    " group by ct.maSoChip";
            Query query = session.createQuery(hql);
            ds = query.list();
        } catch (HibernateException ex) {
            System.err.println(ex);
        } finally {
            session.close();
        }
        return ds;
    }
}
