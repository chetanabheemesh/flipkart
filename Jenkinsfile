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
				echo "Executing in Shell"
				while read -r line  
				do
					echo $line
					scp target/flipkart-1.0-SNAPSHOT.jar gamut@$line:/home/gamut/deploy/
				done <"ips.txt"
			       '''
                        }

                  }
                }


}
	}
