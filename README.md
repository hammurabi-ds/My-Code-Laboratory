# MCLAB
My Code Laboratory

docker build -t mclab .

docker run -d -p 8888:8888 --name judo mclab:latest