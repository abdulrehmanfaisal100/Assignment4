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
                    def dockerCommand = "docker run --rm -i -t abdulrehman100/maven-with-info"
                    sh(dockerCommand)
                    // def container = docker.image("abdulrehman100/maven-with-info").run("--rm")
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