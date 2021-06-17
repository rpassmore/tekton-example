pipeline {
  agent any
  stages {
      stage('Stage') {
        steps {
            checkout scm            
            tektonCreateRaw(inputType: 'FILE', input: '.tekton/featurebuild.yml', namespace: 'tekton-pipelines', clusterName: 'k3d-jenkins-tekton-cluster')
        }
      }
  }
}