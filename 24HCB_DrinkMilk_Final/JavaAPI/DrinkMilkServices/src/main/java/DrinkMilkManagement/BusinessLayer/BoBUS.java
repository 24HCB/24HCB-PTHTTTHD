package DrinkMilkManagement.BusinessLayer;

import DrinkMilkManagement.POJO.BoEntity;
import DrinkMilkManagement.DataAccessLayer.BoDAL;
import java.util.List;
/**
 * Created by AnSon on 11/06/2017.
 */
public class BoBUS {
    public static List<BoEntity> getAll(){
        return BoDAL.getAll();
    }

    public static List<BoEntity> getListByPageNum(int pageNum){
        return BoDAL.getListByPageNum(pageNum);
    }
}
