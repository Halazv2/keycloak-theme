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

#### Installing the Keycloak server:

The Keycloak Server has two downloadable distributions:

    keycloak-18.0.2.[zip|tar.gz]

    This file is the server only distribution. It contains nothing other than the scripts and binaries to run the Keycloak Server.

    keycloak-overlay-18.0.2.[zip|tar.gz]

    This file is a WildFly add-on that you can use to install the Keycloak Server on top of an existing WildFly distribution. We do not support users who want to run their applications and Keycloak on the same server instance.

Procedure

    To install the Keycloak server, run your operating system’s unzip or gunzip and tar utilities on the keycloak-18.0.2.[zip|tar.gz] file.

    To install the Keycloak Service Pack, it must be installed on a different server instance.

        Change to the root directory of your WildFly distribution.

        Unzip the keycloak-overlay-18.0.2.[zip|tar.gz] file.

        Open the bin directory in a shell.

        Run ./jboss-cli.[sh|bat] --file=keycloak-install.cli

#### Important directories:

The following are some important directories in the server distribution.

bin/

    This contains various scripts to either boot the server or perform some other management action on the server.
domain/

    This contains configuration files and working directory when running Keycloak in domain mode.
modules/

    These are all the Java libraries used by the server.
standalone/

    This contains configuration files and working directory when running Keycloak in standalone mode.
standalone/deployments/

    If you are writing extensions to Keycloak, you can put your extensions here. See the Server Developer Guide for more information on this.
themes/

    This directory contains all the html, style sheets, JavaScript files, and images used to display any UI screen displayed by the server. Here you can modify an existing theme or create your own. See the Server Developer Guide for more information on this.
> **ATTENTION**
>
> here you're going to put ``` /themes/test ``` file from the repo that you cloned

## run server : 
open the terminal in keyclock file : 

        cd bin 
then run 

        standalone.bat 



Open the browser https://localhost:8443/auth/
