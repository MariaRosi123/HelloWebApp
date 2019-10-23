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
                    sh "docker --version"
                    sh "docker build -t mariarosi/HelloWebApp:2.0.0 ."
            }
        }
    }
}
