# My Code Labs

This script ensures that all your needed development environments are setup and run as containerized services 

# Requirements

 - Docker

# General Workspace

Build the image
```docker build -t lab:1.0 .```

Run the container
```docker run -d --restart always -p 8888:8888 --name workspace lab:1.0```

# Rstudio workspace


