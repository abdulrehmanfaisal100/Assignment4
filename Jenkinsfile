pipeline {
    agent any

    stages {
        stage('Run Node Container') {
            steps {
                script {
                    def imageName = "abdulrehman100/node-with-info"
                    def container = docker.image(imageName).run("-d")
                    def containerId = container.id
                    echo "Container ID: ${containerId}"
                    def logs = sh(script: "docker logs ${containerId}", returnStdout: true).trim()
                    echo "Container Logs:\n${logs}"
                }
            }
        }

        stage('Run Maven Container') {
            steps {
                script {
                    def imageName = "abdulrehman100/maven-with-info"
                    def container = docker.image(imageName).run("-d")
                    def containerId = container.id
                    echo "Container ID: ${containerId}"
                    def logs = sh(script: "docker logs ${containerId}", returnStdout: true).trim()
                    echo "Container Logs:\n${logs}"
                }
            }
        }
    }
}