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
        sh 'docker build -t app:${BUILD_ID} . '
    }
   }
}
}