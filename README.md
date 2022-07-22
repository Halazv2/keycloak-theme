# How to write a Keycloak theme
![image](https://user-images.githubusercontent.com/93977152/180421003-073e0612-b888-4258-a7d9-22d2a9f3f9df.png)



## Theme Types
A theme can provide one or more types to customize different aspects of Keycloak. The types available are:

- Account - Account management
- Admin - Admin console
- Email - Emails
- Login - Login forms
- Welcome - Welcome page
    
## Coding with following code:
1. create file inside themes file ```/themes/<mytheme>```
2. Put css, js, img to `resources` directory
3. Change html struction in `login.ftl`
4. Custom configurations in `theme.properties`

> **ATTENTION**
>
> When add or remove files, need restart the app

## Run this project : 

clone this rep : ``` https://github.com/Halazv2/keycloak-theme.git ```
### Install the software :  

#### Installation prerequisites: 
These prerequisites exist for installing the Keycloak server:

    Can run on any operating system that runs Java

    Java 8 JRE or Java 11 JRE

    zip or gzip and tar

    At least 512M of RAM

    At least 1G of diskspace

    A shared external database like PostgreSQL, MySQL, Oracle, etc. Keycloak requires an external shared database if you want to run in a cluster. Please see the database configuration section of this guide for more information.

    Network multicast support on your machine if you want to run in a cluster. Keycloak can be clustered without multicast, but this requires a bunch of configuration changes. Please see the clustering section of this guide for more information.

    On Linux, it is recommended to use /dev/urandom as a source of random data to prevent Keycloak hanging due to lack of available entropy, unless /dev/random usage is mandated by your security policy. To achieve that on Oracle JDK 8 and OpenJDK 8, set the java.security.egd system property on startup to file:/dev/urandom






Open the browser https://localhost:8443/auth/
