package pl.coderslab.charity.service;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import pl.coderslab.charity.model.Institution;
import pl.coderslab.charity.repository.InstitutionRepository;

import java.util.List;

@Service
@AllArgsConstructor
public class InstitutionService {
    private InstitutionRepository institutionRepository;

    public List<Institution> getAllInstitutions(){
        return institutionRepository.findAll();
    }
}
