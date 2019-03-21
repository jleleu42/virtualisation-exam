<?php

namespace samplephpwebsite\tests\units;
use mageekguy\atoum;


require_once 'atoum.phar';
require_once __DIR__ . '/../../helloworld.php';


class helloWorld extends atoum
{


   public function testSay(){
      $this
            // création d'une nouvelle instance de la classe à tester
            ->given($this->newTestedInstance)
               ->then
                    ->string($this->testedInstance->say())
                        ->isEqualTo('Hello World !')
      ;
   }
}

?>