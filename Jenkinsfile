pipeline {
    agent any
    tools {
        maven "maven-3"
    }
    stages {
        stage ("Version") {
               steps {
                   sh "mvn --version"
               }
        }
        stage ("Clean and Package") {
            steps {
                    sh "mvn clean compile"
            }
        }
        stage ("Deploy") {
            steps {
                    echo "Deploy code goes here"
                    sh "docker build --tag=HelloWebApp ."
                    sh "docker tag HelloWebApp mariarosi/test100:HelloWebApp-v1"
                    sh "docker login"
                    sh "docker push mariarosi/test100:HelloWebApp-v1"
            }
        }
    }
}
