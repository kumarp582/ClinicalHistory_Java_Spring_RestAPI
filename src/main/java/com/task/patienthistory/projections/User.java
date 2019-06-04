package com.task.patienthistory.projections;

import com.task.patienthistory.entity.Profile;
import org.springframework.data.rest.core.config.Projection;

@Projection(name = "user", types = {Profile.class})
public interface User {
    Long getId();

    String getFirstName();

    String getLastName();
}