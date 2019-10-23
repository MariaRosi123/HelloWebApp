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
        stage ("Deploy") {
            steps {
                    echo "Deploy code goes here"
                    sh "docker build --tag=hello-webapp ."
                    sh "docker tag hello-webapp mariarosi/test100:hello-webapp-v1"
                    sh "docker login -u mariarosi -p Change@2250"
                    sh "docker push mariarosi/test100:hello-webapp-v1"
            }
        }
    }
}
