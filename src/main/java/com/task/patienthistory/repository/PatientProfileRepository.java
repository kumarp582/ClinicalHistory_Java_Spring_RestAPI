package com.task.patienthistory.repository;

import com.task.patienthistory.entity.Profile;
import com.task.patienthistory.projections.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.List;

@RepositoryRestResource
public interface PatientProfileRepository extends JpaRepository<Profile, Long> {
    @Query("select p.id as id, p.firstName as firstName, p.lastName as lastName from Profile p")
    List<User> findAllIdAndFirstNameAndLastName();
}
