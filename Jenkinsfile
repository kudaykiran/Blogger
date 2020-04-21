pipeline {
    agent { label 'master' }
    stages {
        
        stage('Git pull code') {
            steps {
            git 'https://github.com/kudaykiran/Blogger.git'
            }
        }
        stage('Build') {
            steps {
                sh 'npm install'
                sh 'npm install express'
                sh 'npm start &'
                
            }
        }
         stage('Build image') {
            steps{
                     sh 'docker login -u ukkb96 -p udaykiran@123'
                     sh 'docker build -t ukkb96/jenkins-nodejs:v3 .'
                     sh 'docker push ukkb96/jenkins-nodejs:v3'
               }
         }
         stage('QA Approval') {
            steps{
            input('ALL TESTS PASSED?')
            sh "echo 'Approved. Ready for deployment...'"
            }
        }
         stage('run image as a container') {
            steps{
                      sh 'docker run --name blogger -t --publish 3000:3000 ukkb96/jenkins-nodejs:v1'
               }
         }
    }
}
