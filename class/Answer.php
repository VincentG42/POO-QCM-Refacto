<?php
class Answer
{

    private PDO  $database;
    private  string $answer;
    private bool $isCorrect;
    private int $questionId;
    private int $answerId;


    public function __construct($data,$database)
    {
        $this-> database = $database;
        $this->answer = $data['answer'];
        $this->isCorrect = $data['is_correct'];
        $this->questionId = $data['question_id'];
    }

    public function setAnswer($answer)
    {
        $this->answer = $answer;
    }

    public function getAnswer()
    {
        return $this->answer;
    }
    public function setIsCorrect($isCorrect)
    {
        $this->isCorrect = $isCorrect;
    }

    public function getIsCorrect()
    {
        return $this->isCorrect;
    }

    public function setQuestionID($questionID)
    {
        $this->questionId = $questionID;
    }

    public function getQuestionID()
    {
        return $this->questionId;
    }
}
