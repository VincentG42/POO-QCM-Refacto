<?php
class Answer{

    private  string $answerContent;
    private bool $isGood;
    
    
    public function __construct($answerContent, $isGood= false){
        $this-> answerContent = $answerContent;
        $this-> isGood = $isGood;

    }
     
        
}

 