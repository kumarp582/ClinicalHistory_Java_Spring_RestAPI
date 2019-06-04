package com.task.patienthistory.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Data
public class Address {
    @Id
    private String id;
    private String addressOne;
    private String addressTwo;
    private String city;
    private String state;
    private int zipCode;
}
