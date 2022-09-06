pipeline{
    agent any
    tools {
        maven 'Maven' 
    }
    stages{
        stage("Test"){
            steps{
                //mvn test
                sh 'mvn test'
                
            }
           
            }

        stage("Build"){
            steps{
                //mvn package
                sh 'mvn package'
                
            }
           
            }

        stage("Deploy on test"){
            steps{
                //deploy on cont-plugin
                deploy adapters: [tomcat9(credentialsId: 'tomcat-test', path: '', url: 'http://192.168.33.10:8080')], contextPath: null, war: '**/*.war'
                
            }
           
            }

        stage("Deploy on prod"){
            steps{
                deploy adapters: [tomcat9(credentialsId: 'tomcat-prod', path: '', url: 'http://192.168.33.11:8080')], contextPath: null, war: '**/*.war'
                //deploy on cont-plugin
                
            }
           
            }    
        }
        
    post{
        always{
            echo "========always========"
        }
        success{
            echo "========pipeline executed successfully ========"
        }
        failure{
            echo "========pipeline execution failed========"
        }
    }
}
