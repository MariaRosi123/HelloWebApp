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
    }
}
