# Day 45: Jenkins and Kubernetes Exercise

This historical exercise contains a small Flask application, a corrected
single-stage Dockerfile, a Jenkins image build/push pipeline, and basic
Kubernetes manifests. It does not provision EKS or Terraform infrastructure.

The complete integrated project now lives at the repository root and uses
the canonical [`charts/app`](../charts/app) Helm chart, root `Jenkinsfile`,
and [GitHub Actions workflow](../.github/workflows/ci-cd.yml).
