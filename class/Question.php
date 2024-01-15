<?php
 class Question{
    private PDO  $database;

     private string $questionContent ;
     private  string $explications;
     private int $id;


     public function __construct($database){
        $this->database =$database;
     }

  
    public function setExplications( string $explication) : void{
        $this->explications =$explication;
    }

    public function getExplications(){
        return $this -> explications;
    }

    public function setQuestionContent(string $questionContent){
         $this->questionContent =$questionContent;
    }

       public function getQuestionContent(){
        return $this-> questionContent;
    }

    public function setQuestionId(int $questionId){
        $this->id =$questionId;
   }

      public function getQuestionId(){
       return $this-> id;
   }

   public function getAnswers($id){
    $id= $this->id;
    $request = $this ->database -> query("SELECT * FROM answer where id='$id'");
        $answers    = $request->fetchAll();


        return $answers;
  
}



 }




?>