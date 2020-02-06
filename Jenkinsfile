pipeline {
    agent any
    stages {
        stage('install dependencies') {
            steps {
		sh "sudo pip install venv"
		sh "sudo -H python3 -m venv ~/.devops"
		sh "sudo pip install --upgrade pip"
		sh "sudo pip install -r requirements.txt"
            }
        }
        stage('Lint python') {
            steps {
                sh "pylint --disable=R,C,W1203 app.py"
            }
        }
        stage('build docker') {
            steps {
		sh "./run_docker.sh"
            }
        }
        stage('upload docker') {
            steps {
		sh "./upload_docker.sh"
            }
        }
        stage('run kops') {
            steps {
		sh "./run_kops.sh"
            }
	}
        stage('run kubernetes') {
            steps {
		sh "./run_kubernetes.sh"
            }
        }
    }
}
