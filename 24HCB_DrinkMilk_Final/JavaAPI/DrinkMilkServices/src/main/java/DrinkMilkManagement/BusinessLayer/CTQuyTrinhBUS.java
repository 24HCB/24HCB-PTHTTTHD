package DrinkMilkManagement.BusinessLayer;

import DrinkMilkManagement.DataAccessLayer.CTQuyTrinhDAL;
import DrinkMilkManagement.POJO.CtquytrinhEntity;

import java.util.List;

/**
 * Created by AnSon on 11/06/2017.
 */
public class CTQuyTrinhBUS {
    public static List<CtquytrinhEntity> getSoLuongSuaByYear(int year){
        return CTQuyTrinhDAL.getSoLuongSuaByYear(year);
    }
    public static List<CtquytrinhEntity> getSoLuongSuaByMonth(int month, int year){
        return CTQuyTrinhDAL.getSoLuongSuaByMonth(month, year);
    }
}
