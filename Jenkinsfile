pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    def mvnHome = tool name: 'Maven', type: 'Maven'
                    sh "${mvnHome}/bin/mvn clean install"
                }
            }
        }
    }
}

