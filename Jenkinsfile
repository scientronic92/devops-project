pipeline {
    agent any
    stages {
        stage('Pylint') {
            steps {
		//sh "python3 -m pip install -r requirements.txt"
                sh "python3 -m pylint --disable=R,C,W1203 app.py"
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
        stage('run eksctl') {
            steps {
		sh "./create-cluster.sh"
            }
        }	
        stage('run kubernetes') {
            steps {
		sh "./run_kubernetes.sh"
            }
        }
    }
}
