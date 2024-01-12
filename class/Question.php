<?php
 class Question{
     private $questionContent ;
     private array $answers =[];
     private  string $Explications;


     public function __construct($questionContent){
        $this-> questionContent = $questionContent;        
     }


    public function questionDisplay(){ 
        
        foreach($this->answers as $answer){
                $answer->display();
        }
    }

    public function addAnswer( Answer $answer){
        $this->answers[] =$answer;
    }

    public function setExplications($explication){
        $this->Explications =$explication;
    }

    public function getanswers(){
        var_dump($this -> answers);
    }
 }




?>