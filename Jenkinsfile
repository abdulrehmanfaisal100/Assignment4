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
                docker { image 'abdulrehman100/maven-with-info'}
            }
            steps {
                sh 'mvn -version'
            }
        }
    }
}