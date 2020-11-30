properties([parameters([choice(choices: 'main\naccount-service\ncustomer-service\ndiscovery-service\ngateway-service\nzipkin-service', description: 'Select $service_name to Build', name: '$service_name')])])

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
stage ('Build') 
{
    steps
    {
       sh "cd /home/ubuntu/workspace/myproject ; mvn clean install " 
    }
}
 
}
    
}
