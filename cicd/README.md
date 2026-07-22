# CI/CD

The executable GitHub Actions workflow is stored at
[`../.github/workflows/ci-cd.yml`](../.github/workflows/ci-cd.yml), where
GitHub can discover it. The root `Jenkinsfile` provides the equivalent
test, image build, push, Helm deployment, and rollout-verification path.
