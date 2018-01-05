job('test-service-jenkins-dsl') {
    scm {
        git('git://github.com/disharth/test-service-jenkins.git')
    }
    triggers {
        scm('H/15 * * * *')
    }
    steps {
        maven('-e clean install')
    }
}
