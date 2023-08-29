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
                    def containerId = sh(script: "docker run -d --rm ${imageName}", returnStatus: true)
                    echo "Container ID: ${containerId}"
                }
            }
        }
    }
}