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
      'questionText': "What's your favorite color?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 12},
        {'text': 'Yellow', 'score': 15},
      ]
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Dog', 'score': 15},
        {'text': 'Elephant', 'score': 12},
        {'text': 'Cat', 'score': 15},
      ]
    },
    {
      'questionText': "What's your favourite cartoon?",
      'answers': [
        {'text': 'Doremon', 'score': 10},
        {'text': 'Chota Bheem', 'score': 8},
        {'text': 'Tom & Jerry', 'score': 12},
        {'text': 'Shinchan', 'score': 15},
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
            : Result(_totalScore, _resetQuiz),
      
    );
  }
}
