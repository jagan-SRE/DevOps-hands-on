# Day 29: CI/CD with Docker

This exercise packages a static Nginx application, pushes a numbered image
from Jenkins, and deploys that exact image to Kubernetes. The pipeline waits
for `kubectl rollout status`, so an unsuccessful rollout fails the build.

## Components

- `Dockerfile`: builds the Nginx application image.
- `Jenkinsfile`: builds, pushes, deploys, and verifies the image.
- `K8s/`: contains the Deployment and Service.

The sample registry repository is `jaganpudari/day29-cicd`. Configure a
Jenkins username/password credential named `dockerhub` before running it.
