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
                    def runOptions = "--rm -i -t"
                    def containerId = docker.run(runOptions, "abdulrehman100/maven-with-info")
                    // def container = docker.image("abdulrehman100/maven-with-info").run("--rm")
                    def logs = docker.logs(stdout: true, container: containerId)
                    echo logs
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