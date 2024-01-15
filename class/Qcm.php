<?php

//  class Qcm{ version partie 1

//      private array $questionList = [];

     
//      public function addQuestion( Question $question){
//          $this->questionList[] = $question;
         
//         }
        
//     public function generate(){ 
//         foreach($this->questionList as $question){
//                 echo $question -> getQuestionContent()."<br>";
//                 foreach($question -> getAnswers() as $answer){
//                     echo $answer ->getAnswerContent()."<br>";
//                 }

//                 echo $question ->getExplications();
//         }
//     }
//  }


//version partie 2
 class Qcm{
 private PDO  $database;

 private $questionsList;

 private array $questions =[];


 public function __construct($database) {
    $this->database =$database;   
 }

 public function getQuestions(){
     $request = $this ->database -> query('SELECT * FROM question');

     $questionsList = $request->fetchAll();
    $this->hydrateQuestion($questionsList);
 }

 private function hydrateQuestion($questionsList){
    foreach($questionsList as $question){
        $newQuestion= new Question($this -> database);   
            $this -> questions[] = $newQuestion;          
    }

 }

 public function generate(){ 
            foreach($this->questions as $question){
                    echo $question -> getQuestionContent()."<br>";
                    foreach($question -> getAnswers() as $answer){
                        echo $answer ->getAnswerContent()."<br>";
                    }
    
                    echo $question ->getExplications();
            }
        }

 }

 


?>