package DrinkMilkManagement.Controllers;

import DrinkMilkManagement.BusinessLayer.CTQuyTrinhBUS;
import DrinkMilkManagement.POJO.CtquytrinhEntity;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by AnSon on 11/06/2017.
 */
@RequestMapping("/api/ctquytrinh")
@RestController
public class CTQuyTrinhController {	
	@CrossOrigin
    @RequestMapping(value = "year/{year}", method = RequestMethod.GET, produces = {MediaType.APPLICATION_JSON_VALUE})
    public List<CtquytrinhEntity> getSoLuongSuaByYear(@PathVariable int year) {
        return CTQuyTrinhBUS.getSoLuongSuaByYear(year);
    }
    @CrossOrigin
    @RequestMapping(value = "month/{month}-{year}", method = RequestMethod.GET, produces = {MediaType.APPLICATION_JSON_VALUE})
    public List<CtquytrinhEntity> getSoLuongSuaByMonth(@PathVariable int month, @PathVariable int year) {

        List<CtquytrinhEntity> slSua = CTQuyTrinhBUS.getSoLuongSuaByMonth(month, year);
        return slSua;
    }
}
