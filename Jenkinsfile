pipeline{
    agent{
        label "dev"
    }
    stages{
        stage("code checkout"){
            steps{
           git 'https://github.com/KunjaBihariJena/node-todo-cicd.git'
            }
            
        }
    
   stage("docker image build"){
    steps{
       // sh 'docker kill $(docker ps -al -q)'
        sh 'docker container prune -f '
        sh ' docker rmi -f $(docker images -q ) '
        sh 'docker build -t app:${BUILD_ID} . '
    }
   }

   stage("docker container create and deploy application"){
    steps{
        sh """ 
        docker volume creat app1
        docker run -d -p 8000:8000 -v /app1:/app app:${BUILD_ID}
        """
    }
   }
   stage("push image to dockerhub"){
    steps{
        withCredentials([string(credentialsId: 'docker', variable: 'docker1')]){
                    sh """
                    docker login -u kunjabiharijena -p ${docker1} 
                    docker tag  app:${BUILD_ID} kunjabiharijena/app:${BUILD_ID} 
                    docker push kunjabiharijena/app:${BUILD_ID} 
                           """
                     }
        
    }
   }
    }
}