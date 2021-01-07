FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y mono-mcs ruby nodejs \
    gcc ghc mono-devel mono-complete openjdk-11-jre python3 \
    rustc perl6 golang php
RUN apt-get clean

# currently installed:
# c, c++, c#, ruby, java, python3, rust, haskell, javascript (nodejs), perl6, go, php