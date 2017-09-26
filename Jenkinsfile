#!/usr/bin/env groovy
node { 
	checkout scm
	docker.image('maven:3-alpine').inside {
        stage('TestDocker') {
            sh 'mvn --version'
        }
    }
    stage('Build') {
		echo 'make'
	}
	stage('Test') {
		echo 'make check'
	}
	stage('Deploy') {
		echo 'make publish'
	} 
}