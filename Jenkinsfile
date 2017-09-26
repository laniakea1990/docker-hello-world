#!/usr/bin/env groovy
node('maven:3-alpine') { 
	checkout scm
    stage('Build') {
		echo 'make'
		sh 'mvn --version'
	}
	stage('Test') {
		echo 'make check'
	}
	stage('Deploy') {
		echo 'make publish'
	} 
}