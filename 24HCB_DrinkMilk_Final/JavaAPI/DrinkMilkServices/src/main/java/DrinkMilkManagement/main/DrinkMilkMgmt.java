package DrinkMilkManagement.main;

/**
 * Created by AnSon on 10/06/2017.
 */
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
@SpringBootApplication
@ComponentScan("DrinkMilkManagement.Controllers")
public class DrinkMilkMgmt {
    public static void main(String[] args) {
        SpringApplication.run(DrinkMilkMgmt.class, args);
    }
}