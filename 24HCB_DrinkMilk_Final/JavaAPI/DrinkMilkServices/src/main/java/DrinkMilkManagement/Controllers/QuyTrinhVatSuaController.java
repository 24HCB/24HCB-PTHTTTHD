package DrinkMilkManagement.Controllers;

import DrinkMilkManagement.BusinessLayer.QuyTrinhVatSuaBUS;
import DrinkMilkManagement.POJO.QuytrinhvatsuaEntity;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by AnSon on 11/06/2017.
 */
@RequestMapping("/api/qtvs")
@RestController
public class QuyTrinhVatSuaController {
    /*@RequestMapping(value = "all", method = RequestMethod.GET, produces = {MediaType.APPLICATION_JSON_VALUE})
    public List<QuytrinhvatsuaEntity> GetAll() {
        return QuyTrinhVatSuaBUS.getMaQuyTrinhByDate();
    }*/

    @RequestMapping(value = "{date}", method = RequestMethod.GET, produces = {MediaType.APPLICATION_JSON_VALUE})
    public List<QuytrinhvatsuaEntity> getMaQuyTrinhByDate(@PathVariable int date) {
        return QuyTrinhVatSuaBUS.getMaQuyTrinhByDate(date);
    }
}
