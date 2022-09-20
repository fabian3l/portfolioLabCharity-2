package pl.coderslab.charity.service;


import lombok.AllArgsConstructor;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import pl.coderslab.charity.model.Category;
import pl.coderslab.charity.model.Donation;
import pl.coderslab.charity.model.Institution;
import pl.coderslab.charity.repository.CategoryRepository;
import pl.coderslab.charity.repository.DonationRepository;
import pl.coderslab.charity.repository.InstitutionRepository;

import java.util.List;

@Service
@AllArgsConstructor
public class DonationService {

    private DonationRepository donationRepository;

    public Integer getQuantityOfBoxes(){
        List<Donation> donationsList = donationRepository.findAll();
        Integer quantityOfBoxes = 0;
        for (Donation d : donationsList){
            quantityOfBoxes += d.getQuantity();
        }
        return quantityOfBoxes;
    }
    public Integer getQuantityOfDonation(){
        return donationRepository.findAll().size();
    }
    public void save(Donation donation){
        donationRepository.save(donation);
    }


}
