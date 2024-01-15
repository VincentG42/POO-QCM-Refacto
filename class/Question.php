<?php
 class Question{
     private $questionContent ;
     private array $answers =[];
     private  string $explications;


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
        $this->explications =$explication;
    }

    public function getanswers(){
        return $this-> answers;
    }

    public function getExplications(){
        return $this -> explications;
    }
 }




?>