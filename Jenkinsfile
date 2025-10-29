pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/atharvavhad23/jenkins.git'
            }
        }

        stage('Build') {
            steps {
                echo '🏗️ Building the project...'
                sh 'mvn -q clean compile'
            }
        }

        // ❌ Commented out or removed for now
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
