job('My samplephpwebsite V1') {
    scm {
        git('https://github.com/jleleu42/virtualisation-exam') {  node -> 
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