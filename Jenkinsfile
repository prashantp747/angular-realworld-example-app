pipeline {

    agent any

    /* agent {
        docker { 
            image 'node:12.22.1'
            args '-p 8989:8989' 

             }
    } */
    environment {
        HOME = '.'
    }

    /*tools { 
    
        nodejs 'demoAngular'
       } */

    /* stages {
        stage("build and serve application") {
            steps {
                echo '*************************'
                echo "This is build and serve stage.."
                echo '*************************'
                sh "pwd"
                dir("${env.WORKSPACE}/app"){
                    sh "pwd"
                }
                echo "Directory after changed"
                sh "pwd"

                /* #sh "ng -v" *
                sh 'npm install'
                sh 'node --version'
                sh 'npm -v'
                sh 'npm run-script lint'
                sh 'npm run-script build'
                sh 'npm run-script start'
                echo '----------------------- xxxxxxxxxxxxx -----------------------'

                
            }
        } */

        stages {
        stage("build and serve application") {
            steps {
                echo '*************************'
                echo "This is build and serve stage.."
                echo '*************************'
                sh 'docker-compose up --build -d'
                sh 'docker exec angular-app pm2 start npm --name "my-app" -- start'
                echo 'waitng for server up'
                sleep time: 1, unit: 'MINUTES'
                /*sh 'docker-compose -f docker-compose-local-check.yml up'*/
                echo '----------------------- xxxxxxxxxxxxx -----------------------'

                
            }
        }

        /* stage("test") {
            
            agent{
                label 'master'
            }
            environment {
           HOME = '.'
             }

            steps {

                echo 'This is test stage..'
                sh 'npm run-script test'
                echo 'This test stage needs to be configured'
                sh 'npm install'
                sh 'npm run-script test'
                echo 'Done with Test Stage'
                echo '----------------------- xxxxxxxxxxxxx -----------------------'


            }
            } */
        
        stage("test") {
            steps{

                echo '*************************'
                echo 'This is test stage..'
                echo '*************************'
                /* sh 'npm run-script test' */
                //sh 'docker exec -it angular-app sh'
                sh 'docker exec angular-app protractor protractor.conf.js'
                //sh 'exit'        
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