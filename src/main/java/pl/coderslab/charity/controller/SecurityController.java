package pl.coderslab.charity.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.coderslab.charity.model.security.User;
import pl.coderslab.charity.service.security.UserServiceImpl;

@Controller
@Slf4j
public class SecurityController {

    private UserServiceImpl userService;

    public SecurityController(UserServiceImpl userService) {
        this.userService = userService;
    }

    @GetMapping("/login")
    public String login() {
        return "security/login";
    }

    @GetMapping("/403")
    public String noPermission(){
        return "security/noPermission";
    }
    @GetMapping("/logout")
    public String logout(){
        return "security/logout";
    }
    @GetMapping("/register")
    public String registerUser(Model model) {
        model.addAttribute("user", new User());
        return "/security/register";
    }
    @PostMapping("/register")
    public String saveUser(User user) {
        log.info(user.toString());
        userService.saveUser(user);
        return "redirect:/login";
    }

}
