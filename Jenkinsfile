pipeline {
    agent any

    tools {
        maven 'Maven'  // Name must match Jenkins global tool config
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo '🏗️ Building the project...'
                sh 'mvn -q clean compile'
            }
        }

        stage('Test') {
            steps {
                echo '🧪 Running tests...'
                sh 'mvn -q test'
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }

        stage('Package') {
            steps {
                echo '📦 Packaging the JAR...'
                sh 'mvn -q package'
            }
        }

        stage('Deploy') {
            steps {
                echo '🚀 Deploying the JAR to workspace...'
                sh 'mkdir -p $WORKSPACE/deployments && cp target/*.jar $WORKSPACE/deployments/'
            }
        }

        stage('Run Deployed App') {
            steps {
                echo '🟢 Running the built application...'
                sh 'java -jar target/my-java-app-1.0-SNAPSHOT.jar'
            }
        }
    }

    post {
        success {
            echo '✅ Build, Test, Deploy done successfully!'
        }
        failure {
            echo '❌ Pipeline failed.'
        }
    }
}
