pipeline{
    agent any
    stages{
        stage ('1-Clone'){
            steps{
                git credentialsId: '82d2de1e-77b3-42ce-9b59-201aa27b1cde', url: 'https://github.com/kiki023/Data2bbots'
            }
        }
        stage('Terraform Init'){
            steps{
                sh '/usr/bin/terraform init'
            }
        
        }
        stage('Terraform Plan'){
            steps{
                sh 'terraform plan'
            }
        }
        stage ('Terraform Apply'){
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
        
    }
        
    }
