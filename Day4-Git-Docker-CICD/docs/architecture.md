# Internal Developer Platform – Day 4

## Overview

This exercise packages a static HTML page in an Nginx container. It
demonstrates a small, reproducible Docker image rather than a full internal
developer platform.

## Architecture

- Nginx Alpine serves the static page.
- The Dockerfile copies application content into the image.
- Container port 80 is mapped to host port 8080.

## Build and run

```bash
docker build -t day4-nginx:v1.0 -f docker/Dockerfile .
docker run --rm -p 8080:80 day4-nginx:v1.0
```

Open <http://localhost:8080>.
