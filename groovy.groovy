job('My samplephpwebsite V1') {
    scm {
        git('https://github.com/jleleu42/jenkins-test') {  node -> 
            node / gitConfigName('jleleu42')
            node / gitConfigEmail('jleleu42@estiam.com')
        }
    }
    triggers {
        scm('0 * * * *')
    }
    steps {

    }
}