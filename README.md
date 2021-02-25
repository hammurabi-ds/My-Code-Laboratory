# MCLAB
My Code Laboratory

Build the image
```docker build -t lab:1.0 .```

Run the container
```docker run -d --restart always -p 8888:8888 --name workspace lab:1.0```