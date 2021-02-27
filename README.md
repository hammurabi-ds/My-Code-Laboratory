# My Code Labs

![alt text](DS.png)

These tools allows you to quickly setup a general containerized data science environment that is independent from you OS, with useful tools at hand . The yaml file spins up the following contianers:

 - A jupyter lab environment with ability to develop code in Python, R, Julia and C++. 
 - A Rstudio environment for statistical conputing in R
 - A MySQL DB for data storage 
 - A Grafana dashboards for visualizing data from DB


# Requirements

 - Docker (Docker Desktop for Windows & MacOS)
 - Docker-compose

# Instalation 

```docker-compose up -d```

# Usage tips

1. Store the links in your browser or create shortcuts
2. The containers are on the same docker network thus its easy for the different components to connect to eachother e.g DB to Grafana 




