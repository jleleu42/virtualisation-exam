<?php

namespace samplephpwebsite\tests\units;
use mageekguy\atoum;


require_once 'atoum.phar';
require_once __DIR__ . '/../../helloworld.php';

/*
class helloWorld
{
   public function say()
   {
      return 'Hello World !';
   }
}*/

class helloWorld extends atoum
{
   public function testSay()
   {
      $helloWorld = new helloWorld();

      $this->assert
         //->string($helloWorld->say())->isEqualTo('Hello World !')
         ->string('Hello World !')->isEqualTo('Hello World !')
      ;
   }
}

?>