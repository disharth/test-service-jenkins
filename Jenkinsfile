job('test-service-jenkins-dsl') {
    scm {
        git('git://github.com/disharth/test-service-jenkins.git') {  node -> 
            node / gitConfigName('DSL User')
            node / gitConfigEmail('contact@disharth.com')
       }
    }
    triggers {
        scm('H/15 * * * *')
    }
    steps {
        
        shell('mvn package && java -jar target/test-service-jenkins-app.jar')
    }
}
