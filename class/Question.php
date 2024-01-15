<?php
class Question
{

    private PDO  $database;
    private string $question;
    private  string $explications;
    private int $id;
    private array $answers = [];


    public function __construct($data,$database)
    {
        $this-> database = $database;
        $this->question = $data['question'];
        $this->explications = $data['explication'];
        $this->id = $data['id'];
    }


    public function setExplications(string $explication): void
    {
        $this->explications = $explication;
    }

    public function getExplications()
    {
        return $this->explications;
    }

    public function setQuestionContent(string $questionContent)
    {
        $this->question = $questionContent;
    }

    public function getQuestionContent()
    {
        return $this->question;
    }

    public function setQuestionId(int $questionId)
    {
        $this->id = $questionId;
    }

    public function getQuestionId()
    {
        return $this->id;
    }

    public function getAnswers()
    {
        $request = $this->database->query("SELECT * FROM answer");
        $answers    = $request->fetchAll();
        $this->hydrateAnswer($answers);
        return $this-> answers;
    }

    private function hydrateAnswer($answers)
    {

        foreach ($answers as $answer) {
            $newAnswer = new Answer($answer, $this->database);
            $this->answers[] = $newAnswer;
        }
     
    }
}
