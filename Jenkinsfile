pipeline {
agent {
label 'buildserver'
}

stages {

stage ('Checkout') 
{
steps
    {
    
        checkout scm
        
    }
    
}
stage ('Build1') 
{
    steps
    {
       sh "cd /home/ubuntu/workspace/jenkinspipelinedevops/account-service ; mvn clean install " 
    }
}
    stage ('dockerbuild')
{
    steps
    {
       sh "cd /home/ubuntu/workspace/jenkinspipelinedevops/account-service ; sudo docker build -t account-service . " 
    }
}
     stage ('dockerimagepush')
{ 
     steps
      {
          sh "cd /home/ubuntu/workspace/jenkinspipelinedevops/account-service ; docker login -unaga54 -pKodali@89 "
      }
}
}

}
