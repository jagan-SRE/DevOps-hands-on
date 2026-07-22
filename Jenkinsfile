pipeline {
    agent any

    environment {
        IMAGE_REPOSITORY = 'jagan47/devops-45day-practice'
        KUBE_NAMESPACE = 'devops-practice'
    }

    stages {
        stage('Test') {
            steps {
                sh 'python -m pip install -r requirements-dev.txt'
                sh 'python -m pytest -q'
            }
        }
        stage('Build') {
            steps {
                script {
                    env.IMAGE_TAG = sh(script: 'git rev-parse --short=12 HEAD', returnStdout: true).trim()
                }
                sh 'docker build -t $IMAGE_REPOSITORY:$IMAGE_TAG .'
            }
        }
        stage('Push') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh 'echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin'
                    sh 'docker push $IMAGE_REPOSITORY:$IMAGE_TAG'
                }
            }
        }
        stage('Deploy') {
            steps {
                sh 'kubectl create namespace $KUBE_NAMESPACE --dry-run=client -o yaml | kubectl apply -f -'
                sh 'helm upgrade --install devops-practice charts/app --namespace $KUBE_NAMESPACE --set image.repository=$IMAGE_REPOSITORY --set image.tag=$IMAGE_TAG --set image.pullPolicy=Always'
                sh 'kubectl rollout status deployment/devops-practice --namespace $KUBE_NAMESPACE --timeout=180s'
            }
        }
    }
}
