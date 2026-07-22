# Day 30: Kubernetes CI/CD

This exercise uses Jenkins to build and push
`jagan47/day30-cicd:latest`, apply a Kubernetes Deployment and Service, and
wait for the rollout to finish. The Deployment uses the same fully qualified
image and `imagePullPolicy: Always` so the pipeline updates the running image.
