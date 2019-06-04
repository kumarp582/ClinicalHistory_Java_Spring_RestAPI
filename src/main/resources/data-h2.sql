
insert into predict_disease(id,report,threshold,disease_predicted) values (1,'Na','118','Cardio Issue');
insert into predict_disease(id,report,threshold,disease_predicted) values (2,'C1','96','Heart Attack');
insert into predict_disease(id,report,threshold,disease_predicted) values (3,'Bun','79','Cardiovascular');
insert into predict_disease(id,report,threshold,disease_predicted) values (4,'Glucose','12','Neuro');
insert into predict_disease(id,report,threshold,disease_predicted) values (5,'K',9.4,'Pulmonary');
insert into predict_disease(id,report,threshold,disease_predicted) values (6,'CO2',40.8,'Cancer');
insert into predict_disease(id,report,threshold,disease_predicted) values (7,'Troponin',.01,'Vision');
insert into predict_disease(id,report,threshold,disease_predicted) values (8,'BNP','610','Skin/Hair');
insert into predict_disease(id,report,threshold,disease_predicted) values (9,'TotalProtein',5.6,'Neck');

-- User 1
insert into address (id, address_One, address_Two, city, state, zip_Code)
    values (1, '941 Silver Spear Ave.', '', 'Bronx', 'New York', 10468);

insert into profile (id, first_name, last_name, age, address_id, dob, social_history, family_history)
    values (1, 'John', 'peter', 36, 1, null,
            'Married for 45 years, sexual active with wife. Three children, 2 grandchildren, all healthy and well; all live within 50 miles. Retired school teacher. Enjoys model car building. Walks around home, shopping but otherwise not physically active.',
            'sister and mother with DM, father with CAD, age onset 50. Brother with leukemia.');


insert into past_medical_history (id, name, description, operated_date) values (1, 'Chronic',
                                                                                'Chronic renal insufficiency from DM nephropathy: Cr 1.8',
                                                                                '2018-01-01');
insert into past_medical_history (id, name, description, operated_date) values (2, 'Diabetes',
                                                                                'Diabetes: controlled with Metformin – a1c 6.8',
                                                                                '2018-02-01');
insert into past_medical_history (id, name, description, operated_date) values (3, 'Appendectomy', '', '1994-04-01');
insert into past_medical_history (id, name, description, operated_date) values (4, 'Cholecystectomy', '', '2004-01-01');
insert into profile_past_medical_histories (profile_id, past_medical_histories_id ) values (1,1);
insert into profile_past_medical_histories (profile_id, past_medical_histories_id ) values (1,2);
insert into profile_past_surgical_histories (profile_id, past_surgical_histories_id ) values (1,3);
insert into profile_past_surgical_histories (profile_id, past_surgical_histories_id ) values (1,4);


insert into profile_allergies (profile_id, allergies) values (1, 'No Known Drug Allergies');

insert into profile_medicines (profile_id, medicines) values (1, 'Lasix 120 mg BID');
insert into profile_medicines (profile_id, medicines) values (1, 'Correg 25 bid');
insert into profile_medicines (profile_id, medicines) values (1, 'Lisinopril 40 qd');

insert into profile_physical_examination (profile_id, physical_examination) values (1, 'VS: T 97.1, P65, BP 116/66, O2Sat 98% on 2L NC Weight 187lbs');
insert into profile_physical_examination (profile_id, physical_examination) values (1, 'GEN: elderly man lying in bed with head up, NAD');
insert into profile_physical_examination (profile_id, physical_examination) values (1, 'HEENT: NCAT, multiple telangiectasias on face and nose; EOMI, PERRLA, Oropharynx w/o lesions, mucous membranes moist; thyroid not palpable, no adenopathy');
insert into profile_physical_examination (profile_id, physical_examination) values (1, 'Pulmonary: +dullness to percussion at right base, + crackles 1/2 way up chest bilateral posteriorly');
insert into profile_physical_examination (profile_id, physical_examination) values (1, 'Cardio: RRR, +2/6 holosystolic murmur at apex radiating to axilla, +S3, no S4; PMI displaced laterally toward axilla; carotid pulses 2+ B, no bruits; JVP 12cm');
insert into profile_physical_examination (profile_id, physical_examination) values (1, 'Pulses: 2+femoral B, 1+ PT/DP B');
insert into profile_physical_examination (profile_id, physical_examination) values (1, 'Abdomen: +BS, non-distended, nontender, no hepatomegaly.');
insert into profile_physical_examination (profile_id, physical_examination) values (1, 'Extremities: 3+ edema to sacrum, abdominal wall and scrotum; no clubbing, cyanosis, no skin breaks distally');

insert into profile_labreport (profile_id, labreport) values (1, 'Na - 128');
insert into profile_labreport (profile_id, labreport) values (1, 'C1 - 96');
insert into profile_labreport (profile_id, labreport) values (1, 'Bun - 59');
insert into profile_labreport (profile_id, labreport) values (1, 'Glucose - 92');
insert into profile_labreport (profile_id, labreport) values (1, 'K - 4.4');
insert into profile_labreport (profile_id, labreport) values (1, 'CO2 - 40.8');
insert into profile_labreport (profile_id, labreport) values (1, 'Troponin - .01');
insert into profile_labreport (profile_id, labreport) values (1, 'BNP - 1610');
insert into profile_labreport (profile_id, labreport) values (1, 'TotalProtein - 5.6');

-- User 2
insert into address (id, address_One, address_Two, city, state, zip_Code)
values (2, '941 Silver Spear Ave.', '', 'Bronx', 'New York', 10468);

insert into profile (id, first_name,last_name, age,smoking, address_id, dob, social_history, family_history)
values (2, 'Mike', 'Ross', 56,true, 1, null,
        'Married for 45 years, sexual active with wife. Three children, 2 grandchildren, all healthy and well; all live within 50 miles. Retired school teacher. Enjoys model car building. Walks around home, shopping but otherwise not physically active.',
        'sister and mother with DM, father with CAD, age onset 50. Brother with leukemia.');


insert into past_medical_history (id, name, description, operated_date) values (5, 'Chronic',
                                                                                'Chronic renal insufficiency from DM nephropathy: Cr 1.8',
                                                                                '2018-01-01');
insert into past_medical_history (id, name, description, operated_date) values (6, 'Diabetes',
                                                                                'Diabetes: controlled with Metformin – a1c 6.8',
                                                                                '2018-02-01');
insert into past_medical_history (id, name, description, operated_date) values (7, 'Appendectomy', '', '1994-04-01');
insert into past_medical_history (id, name, description, operated_date) values (8, 'Cholecystectomy', '', '2004-01-01');
insert into profile_past_medical_histories (profile_id, past_medical_histories_id ) values (2,5);
insert into profile_past_medical_histories (profile_id, past_medical_histories_id ) values (2,6);
insert into profile_past_surgical_histories (profile_id, past_surgical_histories_id ) values (2,7);
insert into profile_past_surgical_histories (profile_id, past_surgical_histories_id ) values (2,8);


insert into profile_allergies (profile_id, allergies) values (2, 'No Known Drug Allergies');

insert into profile_medicines (profile_id, medicines) values (2, 'Lasix 120 mg BID');
insert into profile_medicines (profile_id, medicines) values (2, 'Correg 25 bid');
insert into profile_medicines (profile_id, medicines) values (2, 'Lisinopril 40 qd');

insert into profile_physical_examination (profile_id, physical_examination) values (2, 'VS: T 97.1, P65, BP 116/66, O2Sat 98% on 2L NC Weight 187lbs');
insert into profile_physical_examination (profile_id, physical_examination) values (2, 'GEN: elderly man lying in bed with head up, NAD');
insert into profile_physical_examination (profile_id, physical_examination) values (1, 'HEENT: NCAT, multiple telangiectasias on face and nose; EOMI, PERRLA, Oropharynx w/o lesions, mucous membranes moist; thyroid not palpable, no adenopathy');
insert into profile_physical_examination (profile_id, physical_examination) values (2, 'Pulmonary: +dullness to percussion at right base, + crackles 1/2 way up chest bilateral posteriorly');
insert into profile_physical_examination (profile_id, physical_examination) values (2, 'Cardio: RRR, +2/6 holosystolic murmur at apex radiating to axilla, +S3, no S4; PMI displaced laterally toward axilla; carotid pulses 2+ B, no bruits; JVP 12cm');
insert into profile_physical_examination (profile_id, physical_examination) values (2, 'Pulses: 2+femoral B, 1+ PT/DP B');
insert into profile_physical_examination (profile_id, physical_examination) values (2, 'Abdomen: +BS, non-distended, nontender, no hepatomegaly.');
insert into profile_physical_examination (profile_id, physical_examination) values (2, 'Extremities: 3+ edema to sacrum, abdominal wall and scrotum; no clubbing, cyanosis, no skin breaks distally');

insert into profile_labreport (profile_id, labreport) values (2, 'Na - 128');
insert into profile_labreport (profile_id, labreport) values (2, 'C1 - 96');
insert into profile_labreport (profile_id, labreport) values (2, 'Bun - 59');
insert into profile_labreport (profile_id, labreport) values (2, 'Glucose - 92');
insert into profile_labreport (profile_id, labreport) values (2, 'K - 4.4');
insert into profile_labreport (profile_id, labreport) values (2, 'CO2 - 40.8');
insert into profile_labreport (profile_id, labreport) values (2, 'Troponin - .01');
insert into profile_labreport (profile_id, labreport) values (2, 'BNP - 1610');
insert into profile_labreport (profile_id, labreport) values (2, 'TotalProtein - 5.6');







