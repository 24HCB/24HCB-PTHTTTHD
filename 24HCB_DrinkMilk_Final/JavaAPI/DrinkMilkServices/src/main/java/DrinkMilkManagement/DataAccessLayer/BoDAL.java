package DrinkMilkManagement.DataAccessLayer;

import DrinkMilkManagement.POJO.BoEntity;
import DrinkMilkManagement.Utilities.HibernateUtil;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

/**
 * Created by AnSon on 11/06/2017.
 */
public class BoDAL {
    public static List<BoEntity> getAll()
    {
        List<BoEntity> ds = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            String hql = "select b from BoEntity b";
            Query query = session.createQuery(hql);
            ds = query.list();
        } catch (HibernateException ex) {
            System.err.println(ex);
        } finally {
            session.close();
        }
        return ds;
    }
    public static List<BoEntity> getListByPageNum(int pageNum)
    {
        List<BoEntity> ds = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            /*String hql = "select b from BoEntity b";
            Query query = session.createQuery(hql);
            ds = query.list();*/
            String hql = "select count(b) from BoEntity b";
            Query query = session.createQuery(hql);
            Long totalRows = (Long)query.uniqueResult();
            Long totalPages = ((totalRows%2)==0)  ? (totalRows/2) : (totalRows/2)+1;
            Integer start = 0;
            Integer limit = 5;
            hql = "from BoEntity";
            query = session.createQuery(hql).setMaxResults(limit);
            ds = query.list();
        } catch (HibernateException ex) {
            System.err.println(ex);
        } finally {
            session.close();
        }
        return ds;
    }
}
