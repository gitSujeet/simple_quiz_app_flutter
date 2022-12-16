import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:myquiz_app/main.dart';
import 'package:myquiz_app/answer.dart';
import 'package:myquiz_app/question.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final VoidCallback resetHandler;


  Result(this.resultScore,this.resetHandler);

  String get resultPhrase{
    var resultText = "You did it!!";
    if(resultScore<= 10){
      resultText = "You're awesome and innocent.";
    }else if(resultScore<=14){
      resultText="Pretty Likable.";
    }else if(resultScore<=16){
      resultText="You are strange.";
    }else{
      resultText="You are so bad.";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhrase,style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,),textAlign: TextAlign.center),
          ElevatedButton(onPressed: resetHandler, child: Text("Restart Quiz")),
        ],
      ),
    );
  }
}
