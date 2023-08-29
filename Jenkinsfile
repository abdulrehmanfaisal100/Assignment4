pipeline {
    agent any

    stages {
        stage('Run Node Container') {
            steps {
                script {
                    def imageName = "abdulrehman100/node-with-info"
                    // def containerId = sh(script: "docker run ${imageName}", returnStatus: true)
                    def container = docker.image(imageName).run("-d")
                    def containerId = container.id
                    echo "Container ID: ${containerId}"
                    def logs = sh(script: "docker logs ${containerId}", returnStdout: true).trim()
                    echo "Container Logs:\n${logs}"
                }
            }
        }
        // stage('Run Container') {
        //     steps {
        //         script {
        //             docker.image("abdulrehman100/maven-with-info").run("--rm")
                    
        //         }
        //     }
        // }

        stage('Run Maven Container') {
            steps {
                script {
                    def imageName = "abdulrehman100/maven-with-info"
                    // def containerId = sh(script: "docker run ${imageName}", returnStatus: true)
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