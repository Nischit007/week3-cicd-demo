pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                // sh 'chmod +x app.sh test.sh'
                sh './app.sh'
            }
        }

        stage('Test') {
            steps {
                sh './test.sh'
            }
        }

        stage('Archive') {
            steps {
                archiveArtifacts artifacts: 'app.sh', fingerprint: true
            }
        }
    }

    post {

        success {
            echo 'Pipeline completed successfully.'
        }

        failure {
            echo 'Pipeline failed.'
        }

        always {
            cleanWs()
        }
    }
}