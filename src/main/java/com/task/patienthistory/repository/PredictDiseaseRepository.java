package com.task.patienthistory.repository;

import com.task.patienthistory.entity.PredictDisease;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface PredictDiseaseRepository extends JpaRepository<PredictDisease, Long> {

}
