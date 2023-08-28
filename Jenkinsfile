// pipeline{
//     agent any
//     stages {
//         stage("build") {
//             steps {
//                 echo 'build the app'
//             }
//         }
    


//         stage("test") {
//             steps {
//                 echo 'test the app'
//             }
//         }

//     }
// }

pipeline {
    agent any

    stages {
        stage('Pull Docker Image') {
            steps {
                script {
                    // Pull the Docker image from DockerHub
                    docker.image('node:14').pull()
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    // Run a Docker container from the pulled image
                    def container = docker.image('node:14').run('-p 8080:3000')
                    // Get the container ID
                    def containerId = container.id
                    echo "Docker container ID: ${containerId}"
                }
            }
        }
    }
}