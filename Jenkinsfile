pipeline {
    agent any
    stages {
        stage('build docker') {
            steps {
		sh "sudo ./run_docker.sh"
            }
        }
        stage('upload docker') {
            steps {
		sh "sudo ./upload_docker.sh"
            }
        }
        stage('run kops') {
            steps {
		sh "sudo ./run_kops.sh"
            }
	}
        stage('run kubernetes') {
            steps {
		sh "sudo ./run_kubernetes.sh"
            }
        }
    }
}
