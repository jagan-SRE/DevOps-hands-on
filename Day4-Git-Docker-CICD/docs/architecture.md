\# Internal Developer Platform – Day 4



\## Overview

A containerized internal developer platform built using Docker and Nginx.

This platform demonstrates DevOps best practices including image

builds, environment separation, and platform versioning.



\## Architecture

\- Nginx (Alpine) as web server

\- Docker image built via Dockerfile

\- Application content mounted inside container

\- Port 80 exposed and mapped to host port 8080



\## Build \& Run

```bash

docker build -t devops-platform:v1.0 -f docker/Dockerfile .

docker run -d -p 8080:80 devops-platform:v1.0

