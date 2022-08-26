import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  const Result(this.resultScore, this.resetHandler, {Key? key})
      : super(key: key);
  String get resultPhrase {
    String resultText;
    if (resultScore <= 20) {
      resultText = "You are awesome and innocent!";
    } else if (resultScore <= 25) {
      resultText = " Pretty likeable!";
    } else if (resultScore <= 30) {
      resultText = " You are ... strange?!";
    } else {
      resultText = " You are so Good!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Text("$resultScore",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          ElevatedButton(
            onPressed: resetHandler,
            child: const Text("Restart Quiz"),
          ),
        ],
      ),
    );
  }
}
