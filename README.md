# Jenkins-pipeline

*Test example of Jenkins pipeline which builds docker image, tests and pushes it to docker hub.*

# Description
This pipeline builds custom docker image, test port 80 and service nginx, push to public dockerhub and sent e-mail notofication. Docker image include nginx and custome message in index.html. 
We use unique tags for pushing docker image - date and time of building our pipeline.

# Requirments:
* Installed Jenkins
* Installed plugins: docker-build-step, Docker Pipeline, Build Timestamp Plugin
* Configured SCM repo https://github.com/vakhmodishyn/Jenkins-pipeline in settings of pipeline
* Installed Docker, dgoss

