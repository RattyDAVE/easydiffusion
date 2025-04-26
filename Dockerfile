FROM ubuntu:rolling

WORKDIR /app/easy-diffusion

RUN cd /app && \
    apt-get update && \
    apt-get install -y wget unzip curl bzip2 && \
    wget https://github.com/cmdr2/stable-diffusion-ui/releases/latest/download/Easy-Diffusion-Linux.zip  && \
    unzip Easy-Diffusion-Linux.zip && \
    rm Easy-Diffusion-Linux.zip && \
    cd easy-diffusion
    
EXPOSE 9000

CMD ["./start.sh"]


