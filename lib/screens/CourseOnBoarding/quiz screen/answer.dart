import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 8),
        child: OutlinedButton(
          style: ButtonStyle(
              side: MaterialStateProperty.all(BorderSide(color: Colors.white)),

            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                side: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
            // backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          onPressed: selectHandler,
          child: Container(
              height: 50,
              child: Center(
                  child: Text(
                answerText,
                style: TextStyle(fontFamily: 'Baloo'),
              ))),
        ),
      ),
    );
  }
}
