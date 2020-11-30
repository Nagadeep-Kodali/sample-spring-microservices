pipeline {
agent {
label '24th November'
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
       sh "cd /home/ubuntu/workspace/28thJava/$service_name ; mvn clean install " 
    }
}
 
}
    
}
