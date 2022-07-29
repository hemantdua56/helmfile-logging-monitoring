# Helmfile-logging-monitoring

## What is Helmfile?
Helm is great in that (1) it gives us the power of dependency management, i.e. our Chart can depend on other Charts and (2) allows templating of yaml files.  Helmfile allows us to have dependencies between separate Helm installs.  This way we can install multiple helm charts with 1 command, but Helmfile is actually using Helm to install multiple Charts.  

Helmfile also allows us to template values.yaml.  In standard Helm Charts this isn’t allowed.  Helm wants the yaml file to be declarative.  Declarative languages work great for ensuring that a system is going to get to the final state we want without worrying about imperative coding type issues.  But maintaining a bunch of static values.yaml files is messy and not DRY.  Which is why often with Declarative Languages you end up using imperative programming in front of the declarative tool/language.

Helmfile allows you to manage any number of Helm charts

## Brief information about this project
Here in this project we are have setup 3 environments (dev, prod, shared)
We are deploying monitoring and logging tools in 3 environment base upon our requirements.
Helmfile is providing the ability to reduce duplicate data.

We have created here a folder envs which stores all our required variables and cusomization for each environment.

we have created sperate folder for each environment where each folder contains 3 files
1. charts.yaml.gotmpl
    In this file you can provide the tools you want to install from the all charts present in charts.
2. envs.sh
    It includes the environment variables to be exported during chart deployment.
3. values.yaml.gotmpl
    This file can be used to customise the charts values as per requirement

## Deployment Commands
The deployment process is very simple and easy to understand.
step1 will be to export all the variables in specific env.sh
step2 will be to apply the helmfile

``` 
source envs/<< ENV >>/envs.sh
helmfile apply
```
