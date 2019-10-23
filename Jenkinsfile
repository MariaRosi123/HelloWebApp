pipeline {
    agent any
    tools {
        maven 'maven-3'
    }
    stages {
        stage ('Version') {
               steps {
                   bat 'mvn --version'
               }
        }
        stage ('Clean and Package') {
            steps {
                    bat 'mvn clean compile'
            }
        }
        stage ('Deploy') {
            steps {
                    bat 'docker --version'
                    bat 'docker build -t mariarosi/HelloWebApp:2.0.0 .'
            }
        }
    }
}
