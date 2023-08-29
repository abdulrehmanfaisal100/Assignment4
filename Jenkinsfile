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
        // stage('Run Container') {
        //     steps {
        //         script {
        //             docker.image("abdulrehman100/maven-with-info").run("--rm")
                    
        //         }
        //     }
        // }
        stage('Run Container') {
            agent {
                docker { image 'abdulrehman100/maven-with-info'}
            }
            steps {
                echo "my name"
            }
        }
        stage('Run Container2') {
            steps {
                script {
                    def imageName = "abdulrehman100/maven-with-info"
                    // def containerId = sh(script: "docker run ${imageName}", returnStatus: true)
                    def container = docker.image(imageName).run("-d")
                    def containerId = container.id
                    echo "Container ID: ${containerId}"
                    def logs = docker.container(containerId).log(stdout: true, stderr: true)
                    echo "Container Logs:\n${logs}"
                }
            }
        }
    }
}