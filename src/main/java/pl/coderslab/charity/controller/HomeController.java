package pl.coderslab.charity.controller;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.service.DonationService;
import pl.coderslab.charity.service.InstitutionService;


@Controller
@AllArgsConstructor
public class HomeController {

    private DonationService donationService;
    private InstitutionService institutionService;

    @RequestMapping("/")
    public String homeAction(Model model){
        model.addAttribute("institutionList", institutionService.getAllInstitutions());
        model.addAttribute("quantityOfBoxes", donationService.getQuantityOfBoxes());
        model.addAttribute("quantityOfDonation", donationService.getQuantityOfDonation());
        return "index";
    }
}
