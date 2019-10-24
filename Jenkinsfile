pipeline {
    agent any
    tools {
        maven "maven-3"
    }
    stages {
        stage ("Version") {
               steps {
                   bat "mvn --version"
               }
        }
        stage ("Clean and Package") {
            steps {
                    bat "mvn clean compile"
                    bat "mvn clean package"
            }
        }
        stage ("Deploy") {
            steps {
                    echo "Deploy code goes here"
                    deploy contextPath: null, war: 'target/HelloWebApp.war'
            }
        }
    }
}
