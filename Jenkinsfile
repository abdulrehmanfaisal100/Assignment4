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
    agent {
        docker {
            image 'ubuntu:latest'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }

    stages {
        stage('Check docker') {
            steps {
                sh 'docker --version'
            }
        }
        stage('Build') {
            steps {
                script {
                    // Build and test your application in a Docker container
                    docker.image('maven:3-alpine').inside {
                        sh 'mvn clean package'
                    }
                }
            }
        }
        
        // stage('Deploy') {
        //     steps {
        //         script {
        //             // Deploy your application using another Docker container
        //             docker.image('nginx:latest').inside {
        //                 sh 'docker run -d -p 80:80 my-app-image'
        //             }
        //         }
        //     }
        // }
    }
}