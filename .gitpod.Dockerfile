FROM gitpod/workspace-full:latest

# Install Android SDK
RUN sudo apt-get update && sudo apt-get install -y wget tar unzip lib32stdc++6 lib32z1
RUN wget https://dl.google.com/android/repository/commandlinetools-linux-6609375_latest.zip
RUN mkdir -p /home/gitpod/android-sdk/cmdline-tools && unzip commandlinetools-linux-6609375_latest.zip -d /home/gitpod/android-sdk/cmdline-tools
RUN yes | /home/gitpod/android-sdk/cmdline-tools/tools/bin/sdkmanager --sdk_root=/home/gitpod/android-sdk "platform-tools" "platforms;android-29" "build-tools;29.0.2"

ENV ANDROID_HOME=/home/gitpod/android-sdk
ENV PATH=$ANDROID_HOME/platform-tools:$PATH
