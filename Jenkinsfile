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

        app = docker.build("getintodevops/hellonode")
        sh 'echo "image bhuilt succefffully"'
    }
   stage('Test image') {
       
      Analyze: {
        writeFile file: anchorefile,
        anchore name: anchorefile, engineurl: inputConfig['anchoreEngineUrl'], engineCredentialsId: inputConfig['admin/foobar'], 
      }
}
}
