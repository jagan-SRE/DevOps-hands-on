# Day 24: Helm Deployment

The original chart was promoted into the repository's canonical deployment
chart at [`charts/app`](../charts/app). It now deploys the Flask metrics
application and includes Deployment, Service, ServiceAccount, health probes,
optional Ingress/HPA resources, a Role, and a RoleBinding.
