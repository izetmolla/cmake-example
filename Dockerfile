FROM ubuntu:latest


RUN apt update && apt upgrade -y
RUN apt-get install --reinstall ca-certificates -y

# install developer dependencies
RUN apt-get install -y git build-essential libboost-all-dev cmake zip unzip sudo pkg-config wget curl tar
RUN wget -O vcpkg.tar.gz https://github.com/microsoft/vcpkg/archive/master.tar.gz
RUN sudo mkdir /opt/vcpkg
RUN sudo tar xf vcpkg.tar.gz --strip-components=1 -C /opt/vcpkg
RUN sudo /opt/vcpkg/bootstrap-vcpkg.sh
RUN sudo ln -s /opt/vcpkg/vcpkg /usr/local/bin/vcpkg
RUN vcpkg version
RUN rm -rf vcpkg.tar.gz


# RUN  apt-get install libboost-all-dev -y
# RUN apt-get update && apt-get install -y lsb-release && apt-get clean all
# RUN  ln -s /usr/include/jsoncpp/json/ /usr/include/json



EXPOSE 8899