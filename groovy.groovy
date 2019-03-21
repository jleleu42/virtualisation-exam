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
        shell('[ -f ./tests/units/helloworld.php ] && php ./tests/units/helloworld.php || echo "Not found"')
    }
}