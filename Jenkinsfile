pipeline {
    agent any
    stages {
        stage('install dependencies') {
	    dir("/home/ubuntu") {
    		steps {
		    sh "python3 -m venv devops"
		    sh "source devops/bin/activate"
		    sh "python3 -m pip install --upgrade pip"
		    sh "python3 -m pip install -r requirements.txt"
		}
	    }  
        }
        stage('Lint python') {
	    dir("/home/ubuntu") {
	        steps {
		    sh "pylint --disable=R,C,W1203 app.py"
	        }
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
