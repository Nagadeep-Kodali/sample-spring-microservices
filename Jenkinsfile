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
          sh "cd /home/ubuntu/workspace/jenkinspipelinedevops/account-service ; sudo docker login -unaga54 -pKodali@89 "
          sh "cd /home/ubuntu/workspace/jenkinspipelinedevops/account-service ; sudo docker tag account-service naga54/account-service "
          sh "cd /home/ubuntu/workspace/jenkinspipelinedevops/account-service ; sudo docker push naga54/account-service "
      }
}
    
stage ('k8sdeployment')
    { 
        steps {
            node ('Ansible') {
           sh " sudo ansible-playbook /root/k8s.yml"
           sh " sudo ansible-playbook /root/k8sservice.yml"
     }
}
}
}
