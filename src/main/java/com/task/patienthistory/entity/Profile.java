package com.task.patienthistory.entity;

import lombok.Data;
import org.hibernate.annotations.ColumnDefault;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Data
public class Profile {
    @Id
    private long id;
    private String firstName;
    private String lastName;
    private int age;
    @OneToOne
    private Address address;
    private Date dob;

    private String socialHistory;
    private String familyHistory;
    @ColumnDefault(value = "false")
    private boolean smoking;
    @ColumnDefault(value = "false")
    private boolean alcohol;

    @OneToMany
    private List<PastMedicalHistory> pastMedicalHistories;
    @OneToMany
    private List<PastMedicalHistory> pastSurgicalHistories;
    @ElementCollection
    private List<String> medicines;
    @ElementCollection
    private List<String> allergies;
    @ElementCollection
    private List<String> physicalExamination;
    @ElementCollection
    private List<String> labreport;
    @Transient
    private List<String> diseasesPredicted = new ArrayList<>();
}
