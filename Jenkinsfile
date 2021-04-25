pipeline {

    agent any

    /* agent {
        docker { 
            image 'node:12.22.1'
            args '-p 8989:8989' 

             }
    } */

    tools { 
    
        nodejs 'demoAngular'

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

                /* #sh "ng -v" */
                sh 'npm install'
                echo '*************************'
                sh 'node --version'
                sh 'npm -v'
                sh 'npm run-script lint'
                echo '----------------------- xxxxxxxxxxxxx -----------------------'

                
            }
        }

         stage("test") {
            steps {

                echo 'This is test stage..'
                /* sh 'npm run-script test' */
                echo 'This test stage needs to be configured'
                echo 'Done with Test Stage'
                echo '----------------------- xxxxxxxxxxxxx -----------------------'


            }
        }
        
         stage("deploy") {
            steps {

                echo 'This is deploy stage..'
                
            }
        }
    }
}
