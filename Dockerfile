FROM ubuntu:rolling

WORKDIR /app/easy-diffusion

RUN cd /app && \
    apt-get update && \
    apt-get install -y wget unzip curl bzip2 && \
    #Fixes && \
    apt-get install -y ffmpeg libsm6 libxext6 && \ 
    wget https://github.com/cmdr2/stable-diffusion-ui/releases/latest/download/Easy-Diffusion-Linux.zip  && \
    unzip Easy-Diffusion-Linux.zip && \
    rm Easy-Diffusion-Linux.zip && \
    cp ./easy-diffusion/scripts/config.yaml.sample ./easy-diffusion/scripts/config.yaml && \
    sed -i 's/listen_to_network: false/listen_to_network: true/g' ./easy-diffusion/scripts/config.yaml
    
EXPOSE 9000

CMD ["./start.sh"]


