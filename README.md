# CLINICAL HISTORY

Give's the Patients Clinical History, Profile Details and Analysis Report for Disease Predictions.

#Build:
mvn clean install

#Run:
PatientHistoryApplication.java run as SpringApplication

Reference for history: https://meded.ucsd.edu/clinicalmed/write.htm


#API'S:

*backend api can be found as spring data rest api - http://localhost:8080/api/profiles

*backend api for future diseases prediction can be found as pring data rest api POST CALL- http://localhost:8080/prediction/diseases

Ex request:

{
    "smoking" : true,
    "alcohol" : false
}


# Used InMemory database H2 is used, can access console at http://localhost:8080/h2 with below details

```url=jdbc:h2:mem:ph;DB_CLOSE_DELAY=-1
username=sa
password=Leave password field empty
```
