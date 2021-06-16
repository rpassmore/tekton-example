pipeline {
  agent any
  stages {
      stage('Stage') {
        steps {
            checkout scm            
            tektonCreateRaw(inputType: 'FILE', input: '.tekton/pipeline.yml')
        }
      }
  }
}