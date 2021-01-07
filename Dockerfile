FROM ubuntu:latest

ENV TZ=Europe/Amsterdam
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt-get install -y wget apt-transport-https
RUN wget https://packages.microsoft.com/config/ubuntu/20.10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && dpkg -i packages-microsoft-prod.deb
RUN apt-get update
RUN apt-get install -y ruby nodejs \
    gcc ghc openjdk-11-jre python3 \
    rustc perl6 golang php-cli dotnet-sdk-5.0
RUN apt-get clean

# currently installed:
# c, c++, c#, ruby, java, python3, rust, haskell, javascript (nodejs), perl6, go, php