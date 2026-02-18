pipeline {
    agent any

    parameters {
        choice(
            name: 'ACTION',
            choices: ['apply', 'destroy'],
            description: 'Select Terraform Action'
        )
    }

    stages {
        stage('git') {
            steps {
                git branch: 'main', url: 'https://github.com/rautasmita31/practice.git'
            }
        }

        stage('terraform init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('terraform plan') {
            steps {
                sh "terraform plan"
            }
        }

        stage('terraform apply') {
            when {
                expression { params.ACTION == 'apply' }
            }
            steps {
                sh 'terraform apply -auto-approve'
            }
        }

        stage('terraform destroy') {
            when {
                expression { params.ACTION == 'destroy' }
            }
            steps {
                sh 'terraform destroy -auto-approve'
            }
        }
    }
}