import 'package:flutter/material.dart';
import 'package:myquiz_app/question.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);


  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: selectHandler,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
        )
      ),
    );
  }
}
