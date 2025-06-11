# sriraj
pipeline {
    agent any

    environment {
        GRADLE_OPTS = '-Dorg.gradle.jvmargs=-Xmx1024m'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Building the application...'
                sh './gradlew assemble'
            }
        }

        stage('Test') {
            steps {
                echo 'Running unit tests...'
                sh './gradlew test'
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished.'
        }
        success {
            echo 'Build and tests succeeded.'
        }
        failure {
            echo 'Build or tests failed!'
        }
    }
}