package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ErrorController {

    String path = "/error";

    @RequestMapping(value = "/404")
    public String error404() {
        System.out.println("custom error handler");
        return path + "404";
    }

    @RequestMapping(value = "/500")
    public String error500() {
        System.out.println("custom error handler");
        return path + "500";
    }

}
