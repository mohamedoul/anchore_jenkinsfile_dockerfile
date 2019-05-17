node {
  def app
  def dockerfile
  def anchorefile
  def repotag

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */

        app = docker.build("hellonode")
        sh "hellonode > anchorefile"
        sh 'echo "image built succeffully"'
    }
   stage('Test image') {
       
      Analyze: {
        writeFile file: anchorefile, text: inputConfig['dockerRegistryHostname'] + "/" + repotag + " " + dockerfile
        anchore name: anchorefile, engineurl: inputConfig['anchoreEngineUrl'], engineCredentialsId: inputConfig['anchoreEngineCredentials'], annotations: [[key: 'added-by', value: 'jenkins']]
}
}
}
