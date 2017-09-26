#!/usr/bin/env groovy
node { 
	checkout scm
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