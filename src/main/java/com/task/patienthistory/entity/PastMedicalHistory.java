package com.task.patienthistory.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Date;

@Entity
@Data
public class PastMedicalHistory {
    @Id
    private Long id;
    private String name;
    private String description;
    private Date operatedDate;
}
