package DrinkMilkManagement.Controllers;

import DrinkMilkManagement.BusinessLayer.BoBUS;
import DrinkMilkManagement.POJO.BoEntity;
import org.springframework.http.MediaType;
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
@RequestMapping("/api/bo")
@RestController
public class BoController {

    @RequestMapping(value = "all", method = RequestMethod.GET, produces = {MediaType.APPLICATION_JSON_VALUE})
    public List<BoEntity> GetAll() {
        return BoBUS.getAll();
    }

    @RequestMapping(value = "{pageNum}", method = RequestMethod.GET, produces = {MediaType.APPLICATION_JSON_VALUE})
    public List<BoEntity> GetListByPageNum(@PathVariable int pageNum) {
        List<BoEntity> listBo = BoBUS.getListByPageNum(pageNum);
        return listBo;
    }
}
