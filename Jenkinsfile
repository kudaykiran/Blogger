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
                
            }
        }
         stage('Build image') {
            steps{
                     sh 'docker login -u ukkb96 -p udaykiran@123'
                     sh 'docker build -t ukkb96/jenkins-nodejs:v3 .'
                     sh 'docker push ukkb96/jenkins-nodejs:v3'
               }
         }
          stage( 'Approval for deployment') {
            steps{
            input('All stages passed')
            sh "echo 'Approved. Ready for deployment...'"
            }
        }
          stage('deploy') {
            steps {
                     sh 'npm start &'
                  }
          }
    }
}
