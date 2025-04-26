docker build --push --tag rattydave/easydiffusion https://github.com/RattyDAVE/easydiffusion.git

docker run -dit --name easy-diffusion --gpus=all --restart always -p 9001:9000 rattydave/easydiffusion

docker run -dit --name easy-diffusion --gpus=all -v <localpath>:/app/easy-diffusion/models --restart always -p 9001:9000 rattydave/easydiffusion
