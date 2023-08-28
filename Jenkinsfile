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
                    def container = docker.image("abdulrehman100/maven-with-info").run()
                    def logs = docker.logs(stdout: true, stderr: true, container: container.id)
                    echo logs
                }
            }
        }
        // stage('Run Container') {
        //     agent {
        //         docker { image 'abdulrehman100/maven-with-info'}
        //     }
        //     steps {
        //         echo "bruh"
        //     }
        // }
    }
}