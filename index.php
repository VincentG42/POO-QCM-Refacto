<?php

require_once('./class/Answer.php');
require_once('./class/Question.php');
require_once('./class/Qcm.php');
require_once('./config/connect_db.php');


// $qcm = new Qcm();
// $question1 = new Question('POO signifie :');
// $question1->addAnswer(new Answer('Php Orienté Objet'));
// $question1->addAnswer(new Answer('ProgrammatiOn Orientée Outil'));
// $question1->addAnswer(new Answer('Programmation Orientée Objet', true));
// $question1->addAnswer(new Answer('Papillon Onirique Ostentatoire'));
// $question1->setExplications('Sans commentaires si vous avez eu faux :-°');
// $qcm->addQuestion($question1);
// $qcm->generate();
// // var_dump($question1);




$qcm = new Qcm($database);

$qcm->getQuestions();




?>