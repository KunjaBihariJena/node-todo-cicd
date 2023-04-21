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
        //sh 'docker kill $(docker ps -al -q)'
        //sh 'docker container prune -f '
        sh ' docker rmi -f $(docker images -q ) '
        sh 'docker build -t app:${BUILD_ID} . '
    }
   }

   stage("docker container create and deploy application"){
    steps{
        sh 'docker run -d -p 8000:8000 app:${BUILD_ID}'
    }
   }
}
}