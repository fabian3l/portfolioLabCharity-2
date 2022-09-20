package pl.coderslab.charity.controller;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.coderslab.charity.model.Category;
import pl.coderslab.charity.model.Donation;
import pl.coderslab.charity.model.Institution;
import pl.coderslab.charity.service.CategoryService;
import pl.coderslab.charity.service.DonationService;
import pl.coderslab.charity.service.InstitutionService;

import java.util.List;

@Controller
@AllArgsConstructor
public class DonationController {

    private CategoryService categoryService;
    private InstitutionService institutionService;
    private DonationService donationService;

    @GetMapping("/add_donation")
    public String addDonation(Model model) {
        List<Category> categories = categoryService.getAllCategories();
        List<Institution> institutions = institutionService.getAllInstitutions();
        Donation donation = new Donation();
        model.addAttribute("categories", categories);
        model.addAttribute("institutions", institutions);
        model.addAttribute("donation", donation);
        return "/donationForm/addDonation";
    }
    @PostMapping("/add_donation")
    public String saveDonation(Donation donation) {
        donationService.save(donation);
        return "/donationForm/addDonationConfirmation";
    }
}

