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
                sh '/usr/local/bin/terraform init'
            }
        
        }
        stage('Terraform Plan'){
            steps{
                sh '/usr/local/bin/terraform plan'
            }
        }
        stage ('Terraform Apply'){
            steps{
                sh '/usr/local/bin/terraform apply --auto-approve'
            }
        }
        stage ('Terraform Destroy'){
            steps{
                sh '/usr/local/bin/terraform destroy'
    }
        
    }
