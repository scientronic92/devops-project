pipeline {
    agent any
    stages {
        stage('Lint HTML') {
            steps {
                sh "pylint --disable=R,C,W1203 app.py"
            }
        }
        stage('build docker') {
            steps {
		sh "run_docker.sh"
            }
        }
        stage('upload docker') {
            steps {
		sh "upload_docker.sh"
            }
        }
        stage('run kops') {
            steps {
		sh "run_kops.sh"
            }
	}
        stage('run kops') {
            steps {
		sh "run_kubernetes.sh"
            }
        }
    }
}
