pipeline {
    agent any
    stages {
        stage('Pylint') {
            steps {
		#sh "python3 -m pip install -r requirements.txt"
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
/*creating cluster with kops:    
	stage('run kops') {
            steps {
		sh "./run_kops.sh"
            }
	}*/
        stage('run eksctl') {
            steps {
		sh "sudo ./create-cluster.sh"
            }
        }	
        stage('run kubernetes') {
            steps {
		sh "./run_kubernetes.sh"
            }
        }
    }
}
