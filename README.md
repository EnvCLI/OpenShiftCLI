# OpenShift CLI

This Openshift command line tool docker image ships oc and includes gettext so you can use envsubst to substitute environment variables in your CI/CD pipeline, for example using in Jenkins or a job in GitLab CI .gitlab-ci.yml file.

## Features

Get a valid KubeCTL Config based on the env variable `OC_SERVER` as well as `OC_USERNAME` and `OC_PASSWORD` or with the token as `OC_TOKEN`.
