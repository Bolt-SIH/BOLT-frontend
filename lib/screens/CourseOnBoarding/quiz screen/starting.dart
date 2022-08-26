import 'package:bolt/screens/CourseOnBoarding/quiz%20screen/quiz.dart';
import 'package:bolt/screens/CourseOnBoarding/quiz%20screen/result.dart';
import 'package:flutter/material.dart';

class StartingQuiz extends StatefulWidget {
  const StartingQuiz({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _StartingQuizState();
  }
}

class _StartingQuizState extends State<StartingQuiz> {
  final _questions = const [
    {
      'questionText': "What is the fullform of NFTs?",
      'answers': [
        {'text': 'Non-Fungible tokens', 'score': 100},
        {'text': 'Non-Ferocious token', 'score': 8},
        {'text': 'Non-Fuctional task', 'score': 12},
        {'text': 'Nice Funny tod', 'score': 15},
      ]
    },
    {
      'questionText': "NFTs are based on which Technology?",
      'answers': [
        {'text': 'Artificial Tech.', 'score': 0},
        {'text': 'BlockChain', 'score': 100},
        {'text': 'Web3', 'score': 0},
        {'text': 'Web Technologies', 'score': 0},
      ]
    },
    {
      'questionText': "Physical currency and cryptocurrency are ?",
      'answers': [
        {'text': 'Black', 'score': 0},
        {'text': 'Good', 'score': 0},
        {'text': 'Fungible', 'score': 100},
        {'text': 'Expensive', 'score': 0},
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // print(_questionIndex);
    // if (_questionIndex < _questions.length) {
    //   print("We have more question!");
    // } else {
    //   print("No more question!");
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _questionIndex < _questions.length
          ? Quiz(
              questions: _questions,
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
            )
          : Result(
              result: _totalScore,
            ),
    );
  }
}
