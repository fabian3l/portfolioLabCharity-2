package pl.coderslab.charity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {

    @GetMapping("/user")
    @ResponseBody
    public String userPage(){
        return "Page for users only";
    }

    @GetMapping("/admin")
    @ResponseBody
    public String adminPage(){
        return "Page for admins only";
    }


}
