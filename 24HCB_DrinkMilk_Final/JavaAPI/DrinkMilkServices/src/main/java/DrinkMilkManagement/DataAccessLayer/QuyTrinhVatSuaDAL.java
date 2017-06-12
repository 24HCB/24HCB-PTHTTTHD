package DrinkMilkManagement.DataAccessLayer;

import DrinkMilkManagement.POJO.QuytrinhvatsuaEntity;
import DrinkMilkManagement.Utilities.HibernateUtil;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;
import java.sql.Date;

/**
 * Created by AnSon on 11/06/2017.
 */
public class QuyTrinhVatSuaDAL {
    public static List<QuytrinhvatsuaEntity> getMaQuyTrinhByDate(int date)
    {
        List<QuytrinhvatsuaEntity> ds = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            String hql = "select qtvs.maQuyTrinh, qtvs.ngayThucHien from QuytrinhvatsuaEntity qtvs where qtvs.ngayThucHien = " + date;
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
