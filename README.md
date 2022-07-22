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

clone rep : ``` https://github.com/Halazv2/keycloak-theme.git ```





Open the browser https://localhost:8443/auth/
