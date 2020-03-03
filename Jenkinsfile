pipeline{
agent any
	stages {
		stage ('Build Stage I')
		{
		   steps
		   {

			withMaven(maven : 'Maven 3.6.0'){
				sh 'mvn install'
		   }

		}
	}
		stage ('Contnue or Exit')
		{
		   steps
		   {
			input ('You continue or Abort Yes/No')

		}
	}
                stage ('Test Stage II') 
                {
                   steps
                   { 

                        withMaven(maven : 'Maven 3.6.0')
			{
                                sh 'mvn test'
                   	}

                  }
                }
		stage ('Deployment Groovey III')
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
