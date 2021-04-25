pipeline {

    agent {
        docker { image 'node:12.22.1' }
    }
    stages {
        stage("build") {
            steps {

                echo "This is build stage.."
                sh "pwd"
                dir("${env.WORKSPACE}/app"){
                    sh "pwd"
                }
                echo "Directory after changed"
                sh "pwd"                
            }
        }

         stage("test") {
            steps {

                echo 'This is test stage..'
                
            }
        }
        
         stage("deploy") {
            steps {

                echo 'This is deploy stage..'
                
            }
        }
    }
}
