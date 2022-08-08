#Mongodb Dockerfile
FROM mongo

#Installed for test purposes to ping the other container in same network
RUN apt update && apt install iproute2 -y

#Default Environment Variables
ENV MONGO_INITDB_ROOT_USERNAME root

ENV MONGO_INITDB_ROOT_PASSWORD example

ENV DEFAULT_PORT 27017

EXPOSE ${DEFAULT_PORT}
