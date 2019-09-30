FROM kudaliar032/android-sdk:base

LABEL maintainer="aditya@klim.or.id"

RUN yes | sdkmanager "platform-tools"
RUN yes | sdkmanager "platforms;android-28"
RUN yes | sdkmanager "build-tools;28.0.1"
RUN yes | sdkmanager "build-tools;28.0.2"
RUN sdkmanager --update && yes | sdkmanager --licenses
