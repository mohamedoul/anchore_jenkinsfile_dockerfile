node {
  def app
  def dockerfile
  def anchorefile
 def imageLine = 'hellonode'
  def repotag

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */

        app = docker.build("hellonode")   
        echo "image built succeffully"'
     
    }
   stage('Test image') {
       
      Analyze: {
   
          writeFile file: 'anchore_images', text: imageLine
          sh "chmod 777 anchore_images"
          anchore name: 'anchore_images'
}
}
}
