FROM gitpod/workspace-full:latest

# Install Java and other dependencies
RUN sudo apt-get update && sudo apt-get install -y openjdk-11-jdk

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH
