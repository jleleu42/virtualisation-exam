job('My samplephpwebsite') {
    scm {
        git('https://github.com/jleleu42/virtualisation-exam') {  node -> 
            node / gitConfigName('jleleu42' )
            node / gitConfigEmail('jleleu42@estiam.com')
        }
    }
    triggers {
        scm('H * * * *')
    }
    steps {
        shell('php phar --test-it')
    }
}