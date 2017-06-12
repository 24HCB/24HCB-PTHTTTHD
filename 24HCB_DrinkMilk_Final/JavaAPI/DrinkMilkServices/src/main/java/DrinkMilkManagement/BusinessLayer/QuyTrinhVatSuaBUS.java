package DrinkMilkManagement.BusinessLayer;

import DrinkMilkManagement.DataAccessLayer.QuyTrinhVatSuaDAL;
import DrinkMilkManagement.POJO.QuytrinhvatsuaEntity;

import java.util.List;

/**
 * Created by AnSon on 11/06/2017.
 */
public class QuyTrinhVatSuaBUS {
    public static List<QuytrinhvatsuaEntity> getMaQuyTrinhByDate(int date){
        return QuyTrinhVatSuaDAL.getMaQuyTrinhByDate(date);
    }
}
