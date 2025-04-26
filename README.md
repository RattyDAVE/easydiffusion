docker build --tag rattydave/easydifusion https://github.com/RattyDAVE/easydiffusion.git

docker run -dit --name easy-diffusion --gpus=all --restart always -p 9001:9000 rattydave/easydiffusion
