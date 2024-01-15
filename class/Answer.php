<?php
class Answer{

    private  string $answerContent;
    private bool $isCorrect;
    private int $questionId;
    private int $answerId;
 
    
    public function __construct($answerContent, $isCorrect= false){
        $this-> answerContent = $answerContent;
        $this-> isCorrect = $isCorrect;
    }

    public function setAnswerContent($answerContent){
        $this->answerContent = $answerContent;
    }

    public function getAnswerContent(){
        return $this-> answerContent;
    }
    public function setIsCorrect($isCorrect){
        $this->isCorrect = $isCorrect;
    }

    public function getIsCorrect(){
        return $this-> isCorrect;
    }

    public function setQuestionID($QuestionID){
        $this->questionId = $QuestionID;
    }

    public function getQuestionID(){
        return $this-> questionId;
    }

    
     
        
}

 