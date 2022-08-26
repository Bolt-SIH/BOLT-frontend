import 'package:bolt/screens/CourseOnBoarding/quiz%20screen/answer.dart';
import 'package:bolt/screens/CourseOnBoarding/quiz%20screen/question.dart';
import 'package:bolt/theme/app_styles.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  const Quiz(
      {Key? key,
      required this.questions,
      required this.answerQuestion,
      required this.questionIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 17),
      child: Column(
        children: [
          CustomProgressBar((questionIndex + 1) / 4),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.4,
          ),
          Question(
            questions[questionIndex]['questionText'] as String,
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map(
            (answer) {
              return Answer(() => answerQuestion(answer['score']),
                  answer['text'] as String);
            },
          ).toList(),
        ],
      ),
    );
  }
}
