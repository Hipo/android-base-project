# android-project-setup-guide
This project will be our base project. This is also documentation for Android Projects in Hipo. Build configurations, passwords, keys everything should be in this repo. Aim is to make android projects people independent.
Here is the list needs to be added here with well-written documentation. The documentation should answer to question "Why?, How? and any Future Progress?"

**Integrate quality tools**

Simply add following codes to your project level gradle file

Before the ```apply plugin: 'com.android.application'```

```gradle
    plugins {
        id "io.gitlab.arturbosch.detekt" version "1.0.0.RC6-4"
    }
```
At the end of apply commands

```gradle
    apply from: 'https://raw.githubusercontent.com/Hipo/android-base-project/master/config/quality/quality.gradle'
```


**Needs to Add**
- Product flavors (Staging, Prod)
- Jenkins jobs
- Tryouts apps 
- Base .gitignore file
- Base proguard file for common libs.