pipeline{
     agent any
    environment{
        port = '5000'
    }
    stages{
       stage('Checkout'){
        steps{
            git branch:'main',
            url: 'https://github.com/HarshaB769/python_img.git'

        }
       }
       stage ('Build Docker Image'){
        steps{
            sh 'docker build -t python_img .'
        }
       }
       stage('Deploy App'){
        steps{
            script{
                
                
sh '''
docker stop python-mg-container || true
docker rm python-mg-container || true
docker run -d --name python-mg-container -p 5000:5000 python_img
'''


                
            }
        }
       }
    }
 }