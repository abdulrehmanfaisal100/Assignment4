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
                sh './entrypoint.sh'
            }
        }
    }
}