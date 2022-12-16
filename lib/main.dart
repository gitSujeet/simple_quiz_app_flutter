import 'package:flutter/material.dart';
import 'package:myquiz_app/question.dart';
import 'package:myquiz_app/answer.dart';
import 'package:myquiz_app/quiz.dart';
import 'package:myquiz_app/result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite Color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 5},
        {'text': 'Red', 'score': 4},
        {'text': 'Blue', 'score': 3}
      ],
    },
    {
      'questionText': 'What\'s your favorite Animal?',
      'answers': [
        {'text': 'Tiger', 'score': 4},
        {'text': 'Lion', 'score': 5},
        {'text': 'Deer', 'score': 10},
        {'text': 'Panther', 'score': 3}
      ],
    },
    {
      'questionText': 'What\'s your favorite Social Network Sites?',
      'answers': [
        {'text': 'Insta', 'score': 10},
        {'text': 'Facebook', 'score': 5},
        {'text': 'Twitter', 'score': 4},
        {'text': 'LinkedIn', 'score': 3}
      ],
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex=0;
      _totalScore=0;
    });

  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score; //_totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print("We have more Questions!!");
    } else {
      print("No more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(
                _totalScore,_resetQuiz
              ),
      ),
    );
  }
}
