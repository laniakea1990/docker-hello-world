node {
   stage('Git Clone') { // for display purposes
      // Get some code from a GitHub repository
      git 'https://github.com/raiseking/docker-hello-world.git'
   }
   docker.withRegistry('http://192.168.139.129:5000/') {
		docker.image('maven:3.5-alpine').inside('-v $HOME/.m2:/root/.m2') {
			stage('Build') {
			// Run the maven build
			sh "mvn -Dmaven.test.skip=true clean package"
			}
		}
		def customImage = docker.build("192.168.139.129:5000/docker-cicd:${env.BUILD_ID}")
	    customImage.push()
    }
   
   stage('Deploy') {
      echo "Deploy artifact image to docker env."
   }
}