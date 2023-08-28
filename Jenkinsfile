pipeline {
    agent any

    stages {
        stage('Pull Docker Image') {
            agent {
                docker { image 'node:14'}
            }
            steps {
                sh 'node -v'
            }
        }

        stage('Run Container') {
            agent {
                docker { image 'maven:3.9.3-eclipse-temurin-17-alpine'}
            }
            steps {
                sh 'mvn --version'
            }
        }
    }
}