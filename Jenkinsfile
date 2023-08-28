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
            steps {
                script {
                    docker.image("abdulrehman100/maven-with-info:latest").run("--rm")
                }
            }
        }
        // stage('Run Container check') {
        //     agent {
        //         docker { image 'abdulrehman100/maven-with-info'}
        //     }
        //     steps {
        //         sh 'mvn -version'
        //     }
        // }
    }
}