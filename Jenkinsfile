pipeline {
      agent any
      environment {
           CHKP_CLOUDGUARD_ID = "3a235afb-f71c-4eec-a3ad-49d84dbce306"
           CHKP_CLOUDGUARD_SECRET = "ypdqz61yx9xbtqyz3jkrmp7p"
            
         }
            
   stages {
          
         stage('Clone Github repository') {
            
    
           steps {
              
             checkout scm
           
             }
  
          }
          
    stage('ShiftLeft Code Scan') {   
       steps {   
                   
         script {      
              try {

             
                
            
                sh 'chmod +x shiftleft' 

                sh './shiftleft code-scan -s .'
           
               } catch (Exception e) {
    
                 echo "Request for Approval"  
                  }
              }
            }
         }
         
     stage('Code approval request') {
     
           steps {
             script {
               def userInput = input(id: 'confirm', message: 'Do you Approve to use this code?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Approve Code to Proceed', name: 'approve'] ])
              }
            }
          }
           
           
     
      stage('Terraform config policy Scan') {    
           
            steps {
         
                    sh './shiftleft iac-assessment -l S3Bucket should have encryption.serverSideEncryptionRules -p ./terraform'
                    
              }
            }
  } 
}
