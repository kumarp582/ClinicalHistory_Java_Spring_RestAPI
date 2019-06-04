package com.task.patienthistory.controller;

import com.task.patienthistory.entity.PredictDisease;
import com.task.patienthistory.entity.Profile;
import com.task.patienthistory.projections.User;
import com.task.patienthistory.repository.PatientProfileRepository;
import com.task.patienthistory.repository.PredictDiseaseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
public class MainController {

    final PatientProfileRepository patientProfileRepository;
    final PredictDiseaseRepository predictDiseaseRepository;

    @Autowired
    public MainController(PatientProfileRepository patientProfileRepository, PredictDiseaseRepository predictDiseaseRepository) {
        this.patientProfileRepository = patientProfileRepository;
        this.predictDiseaseRepository = predictDiseaseRepository;
    }

    @GetMapping("/")
    public String main(Model model) {
        List<User> userList = patientProfileRepository.findAllIdAndFirstNameAndLastName();
        model.addAttribute("users", userList);
        return "index";
    }

    @GetMapping("/profile/{id}")
    public String showUpdateForm(@PathVariable("id") long id, Model model) {
        Profile profile = patientProfileRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("Invalid user Id:" + id));
        profile.setDiseasesPredicted(mapDiseases(profile));
        model.addAttribute("profile", profile);
        return "profile";
    }

    @PostMapping(value = "/prediction/diseases", consumes = MediaType.APPLICATION_JSON_VALUE)
    public List<String> mapDiseases(Profile profile) {
        List<PredictDisease> predictDiseases = predictDiseaseRepository.findAll();
        List<String> diseasesPredicted = new ArrayList<>();
        Optional.ofNullable(profile.getLabreport())
                .orElse(new ArrayList<>())
                .forEach(labReport -> {
                    String labReportKey = labReport.split("-")[0].trim();
                    Double labReportThreshold = Double.valueOf(labReport.split("-")[1].trim());
                    Optional<PredictDisease> predictDiseaseMatched = predictDiseases
                            .stream()
                            .filter(predictDisease -> predictDisease.getReport().equalsIgnoreCase(labReportKey) && labReportThreshold > predictDisease.getThreshold())
                            .findFirst();

                    predictDiseaseMatched.ifPresent(predictDisease -> diseasesPredicted.add(predictDisease.getDiseasePredicted()));
                });
        if (profile.isSmoking()) {
            diseasesPredicted.add("Cancer");
        }
        if (profile.isAlcohol()) {
            diseasesPredicted.add("Cancer");
        }
        return diseasesPredicted;
    }
}
