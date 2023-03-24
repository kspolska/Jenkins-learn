pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'python --version'
                sh 'whoami'
                sh 'ansible --version'
            }
        }
    }
}