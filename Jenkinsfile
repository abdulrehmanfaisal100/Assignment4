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

// pipeline {
//     agent any

//     stages {
//         stage('Pull Docker Image') {
//             steps {
//                 script {
//                     // Pull the Docker image from DockerHub
//                     docker.image('node:14').pull()
//                 }
//             }
//         }

//         stage('Run Container') {
//             steps {
//                 script {
//                     // Run a Docker container from the pulled image
//                     def container = docker.image('node:14').run('-p 3000:3000')
//                     // Get the container ID
//                     def containerId = container.id
//                     echo "Docker container ID: ${containerId}"
//                 }
//             }
//         }
//     }
// }

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
            // steps {
            //     script {
            //         // Pull the Docker image from DockerHub
            //         docker.image('node:14').pull()
            //     }
            // }
        }

        stage('Run Container') {
            // steps {
            //     script {
            //         // Run a Docker container from the pulled image
            //         def container = docker.image('node:14').run('-p 3000:3000')
            //         // Get the container ID
            //         def containerId = container.id
            //         sh 'docker exec '
            //         // Execute a command inside the container to display information
            //         docker.image('node:14').inside(containerId) {
            //             // sh 'echo "Node.js version: $(node -v)"'
            //             // sh 'echo "Your Name: YourName"'
            //         }

            //         echo "Docker container ID: ${containerId}"
            //     }
            // }
            agent {
                docker { image 'maven:3.9.3-eclipse-temurin-17-alpine'}
            }
            steps {
                sh 'mvn --version'
            }
        }
    }
}