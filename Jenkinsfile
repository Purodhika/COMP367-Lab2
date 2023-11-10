pipeline {
    agent any
    environment {
        DOCKERHUB_PASSWORD=credentials('Docker_Hub_Password')
        DOCKERHUB_USERNAME=credentials('Docker_Hub_Username')
    }
    stages {
        stage('Maven Build') {
            steps {
                withMaven(maven: 'maven3') {
                sh 'mvn clean package'
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                sh "docker build -t ${DOCKERHUB_USERNAME}/comp367_lab2:1.0 ."
            }
        }
        stage('Docker Login')
        {
            steps {
                script {
                    sh 'docker login -u ${DOCKERHUB_USERNAME} -p ${DOCKERHUB_PASSWORD}'
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                sh "docker push ${DOCKERHUB_USERNAME}/comp367_lab2:1.0"
            }
        }
    }
}


