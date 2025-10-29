pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/atharvavhad23/jenkins.git'
            }
        }

        stage('Build') {
            steps {
                echo '🏗️ Building the project...'
                sh 'mvn -q clean compile'
            }
        }

        // stage('Test') {
        //     steps {
        //         echo '🧪 Running tests...'
        //         sh 'mvn -q test'
        //     }
        // }

        stage('Package') {
            steps {
                echo '📦 Packaging the project...'
                sh 'mvn -q package'
            }
        }

        stage('Deploy') {
            steps {
                echo '🚀 Deploying the application...'
            }
        }
    }

    post {
        success {
            echo '✅ Pipeline succeeded.'
        }
        failure {
            echo '❌ Pipeline failed.'
        }
    }
}
