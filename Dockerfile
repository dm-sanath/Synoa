FROM java

# maintainer details
MAINTAINER Bizruntime

Run apt-get update && apt-get install -y git &&  apt-get install -y maven


# attach volumes
VOLUME /volume/git


# create working directory
RUN mkdir -p /local/git

#Copy the COde from git to DOcker
RUN git clone https://github.com/dm-sanath/Synoa.git /local/git/Synoa
WORKDIR /local/git/Synoa

RUN mvn clean install -DskipTests
