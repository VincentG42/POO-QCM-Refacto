<?php
 class Qcm{

     private array $questionList = [];

     
     public function addQuestion( Question $question){
         array_push($questionList, $question);
         
        }
        
            // public function generate(){ 
            //     foreach($this->questionList as $question){
            //             $question-> questionDisplay();
            //     }
            // }
 }




?>