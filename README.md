# doctor-label
This is a web system that allows Doctor labelling cases.

You start the application on Login Home Page accessing the URL http://localhost:4200

![login-home-capture-doctor-label](https://user-images.githubusercontent.com/2066459/111083538-054a8580-8506-11eb-9d66-47bc2b8ee9b3.png)

After you put your credentials like e-mail and password and if they are valide, you will redirect to Case Page.

![labelling-screen-doctor-label](https://user-images.githubusercontent.com/2066459/111083591-34f98d80-8506-11eb-9864-2c22b6d39d13.png)

Here, you can see your Next Case or the actual Case that you are working.

You can choose more than one Label for this cases and when you are able to get next case you click on button Next Case.

You only will be see next case when you click on this button, otherwise, you will keep see tha Case that you are working.

We believe that on some cases, you need to a break and that's why wee keep the Case with you if you starting labelling the case.


## Back-end Technology stack used

- Java 11
- Spring Boot Web 2.4.3
- Spring Boot Starter Data JPA
- Spring Boot devtools
- Spring Boot Starter Test
- Spring Boot Starter Validation
- Spring Cloud Starter Openfeign
- Spring Boot Starter Security
- IO JSON WEB TOKEN v0.9.1
- SPringFox Swagger 2 v2.9.2
- SpringFox Swagger UI v2.9.2
- Mysql
- Docker
- Maven

## Front-End Technology stack used

- Angular 11.2.3
- Angular CLI 11.2.3
- angular-ng-autocomplete
- Node 14.15.4
- Bootstrap 4.6.0
- Font-Awesome 4.7.0


## Runnning Spring Boot Applicaiton DoctorLabel Label Service Back-End Microservices "traditional way"

```bash
git clone https://github.com/igormelao/doctor-label-service.git
cd doctorlabel-label-service
# You need a instancy of Mysql running on port 3306 with
 - database: db_dev_doctor_label
# Generate JARs with Maven
 - mvn clean package
# Starting Spring Boot Projet 
 - with JAR generated, go to the folder /target and just run  command
  - java -jar doctorlabel-label-service-0.0.1-SNAPSHOT.jar
  
PS: The Spring Boot will run the file inside of project data.sql and will populate some data.  

http://localhost:8080/labels/
 
```

## Runnning Spring Boot Applicaiton DoctorLabel Labelling Service Back-End Microservices "traditional way"

```bash
git clone https://github.com/igormelao/doctor-labelling-service.git
cd doctorlabel-labelling-service
# You need a instancy of Mysql running on port 3306 with
 - database: db_dev_doctor_labelling
# Generate JARs with Maven
 - mvn clean package
# Starting Spring Boot Projet 
 - with JAR generated, go to the folder /target and just run  command
  - java -jar doctorlabel-labelling-service-0.0.1-SNAPSHOT.jar
  
PS: The Spring Boot will run the file inside of project data.sql and will populate some data.  

You need to authenticate to use this application.

Make a POST request with credentials e-mail and password to 
http://localhost:8081/auth/

It will return a token and type Bearer. Keep it to send with other requests to access the services
```

## Build and run using Docker Compose for Back-end Microservices DoctorLabel Label Service and DoctorLabel Labelling Service

```bash
# Go to folder doctorlabel-label-service
  cd doctorlabel-label-service
# Generate JARs with Maven
 - mvn clean package
# Generate Docker Image
 - docker build -t doctor/label . 
 
 # Go to folder doctorlabel-labelling-service
  cd doctorlabel-labelling-service
# Generate JARs with Maven
 - mvn clean package
# Generate Docker Image
 - docker build -t doctor/labelling . 

# Go to the main project doctor-label
cd doctor-label
# Run Docker-Compose command
docker-compose build && docker-compose up

PS: The containers mysql:5.7, doctor/label and doctor-labellingapp will run, but, I couldn't manager that Spring Boot insert data.sql data inside the Mysql container.
```


``` Accessing the API Document
 When Back-nd Microservices be runing, you can see all resources for the API through documentation generated automatically by Swagger Project on
 
 # Doctor-Label-Services
 http://localhost:8080/swagger-ui.html#
 
 # Doctor-Labelling-Services
  http://localhost:8081/swagger-ui.html#
```

## Front-End
- Go to the folder doctor-label-front
- Run command ng s --o
- It will open automatically a browser
- For the UI, Access your browser at `http://localhost:4200`

## Demo Credentials

- Doctor Chang
    - Email: chang@gmail.com
    - Password: 123456
