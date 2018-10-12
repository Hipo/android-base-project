# android-project-setup-guide
This project will be our base project. This is also documentation for Android Projects in Hipo. Build configurations, passwords, keys everything should be in this repo. Aim is to make android projects people independent.
Here is the list needs to be added here with well-written documentation. The documentation should answer to question "Why?, How? and any Future Progress?"

**Integrate quality tools**

Simply add following codes to your project level gradle file

Before the ```apply plugin: 'com.android.application'```

```gradle
    plugins {
        id "io.gitlab.arturbosch.detekt" version "1.0.0.RC9.2"
    }
```
At the end of apply commands

```gradle
    apply from: 'https://raw.githubusercontent.com/Hipo/android-base-project/master/config/quality/quality.gradle'
```

When you add those lines and build it, probably it will fail for the first time. This is the expected outcome, because if one of the quality rules has failed it causes build to fail. This is what we aimed for. When the quailty tools causes build to fail, quality tools will create reports files under `app\build\reports\`. From those reports you can see the problems to fix.

**Needs to Add**
- Product flavors (Staging, Prod)
- Jenkins jobs
- Tryouts apps 
- Base .gitignore file
- Base proguard file for common libs.
