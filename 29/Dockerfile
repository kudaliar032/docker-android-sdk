FROM kudaliar032/android-sdk:base

LABEL maintainer="aditya@klim.or.id"

RUN yes | sdkmanager "platform-tools"
RUN yes | sdkmanager "platforms;android-29"
RUN yes | sdkmanager "build-tools;29.0.1"
RUN yes | sdkmanager "build-tools;29.0.2"
RUN sdkmanager --update && yes | sdkmanager --licenses
