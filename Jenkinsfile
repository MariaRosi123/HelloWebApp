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
                    sh "mvn clean package"
            }
        }
        stage ("Artifacts") {
             steps {
                archive "target/*.war"
             }
        }
        stage ("Deploy") {
            steps {
                    echo "Deploy code goes here"
                    sh "mvn deploy"
            }
        }
    }
}
