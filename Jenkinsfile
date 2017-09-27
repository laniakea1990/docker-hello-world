node {
   stage('Git Clone') { // for display purposes
      // Get some code from a GitHub repository
      git 'https://github.com/raiseking/docker-hello-world.git'
   }
   docker.image('maven:3.5-alpine').inside('-v $HOME/.m2:/root/.m2') {
        stage('Build') {
         // Run the maven build
         sh "mvn -Dmaven.test.skip=true clean package"
        }
    }
   stage('Build Docker Image') {
      def customImage = docker.build("laniakea1990/docker-cicd:${env.BUILD_ID}")
	  sh "docker login -ulaniakea1990 -p#jrrrk1990811#"
	  customImage.push()
   }
   stage('Deploy') {
      echo "Deploy artifact image to docker env."
   }
}