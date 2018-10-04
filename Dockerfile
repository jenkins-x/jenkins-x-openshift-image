FROM jenkinsxio/jenkinsx:latest

COPY plugins.txt /usr/share/jenkins/ref/openshift-plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/openshift-plugins.txt

ENV OPENSHIFT_ENABLE_OAUTH true