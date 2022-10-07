FROM ubuntu:latest

RUN for user in frank; do adduser $user; echo "1234" | passwd $user --stdin; done
RUN sudo apt update && apt install mysql -y
