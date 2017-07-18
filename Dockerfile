FROM silintl/php7

RUN apt-get update && apt-get install -y unzip openssh-client git wget && yes | apt-get install python-software-properties

# Install node ...
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN yes | apt-get update \
    && apt-get install nodejs \
    && npm install --global bower \
    && npm install --global gulp

RUN apt-get install -y openjdk-8-jdk