pipeline{
agent any
	stages {
		stage ('Build Stage')
		{
		   steps
		   {

			withMaven(maven : 'Maven 3.6.0'){
				sh 'mvn install'
		   }

		}
	}
                stage ('Test Stage') 
                {
                   steps
                   { 

                        withMaven(maven : 'Maven 3.6.0')
			{
                                sh 'mvn test'
                   	}

                  }
                }
		stage ('Deployment Groovey')
                {
                   steps
                   {

                        withMaven(maven : 'Maven 3.6.0')
                        {
	
                                sh '''
				#!/bin/bash
				echo "Executing in Shell In Wow "
				
			       '''
                        }

                  }
                }


}
	}
