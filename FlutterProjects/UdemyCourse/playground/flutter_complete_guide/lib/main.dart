import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      if (_questionIndex + 1 < question.length) {
        _questionIndex = _questionIndex + 1;
      } else {
        _questionIndex = 0;
      }
    });

    print(_questionIndex);
  }

  var question = [
    {
      'questionText': 'What is your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What is your favorite Animal?',
      'answers': ['Dog', 'Horse', 'Cat', 'Chicken'],
    },
    {
      'questionText': 'Who is your favorite Instructor?',
      'answers': ['Max', 'Zuk', 'Dan', 'Bil'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Create a base design page
      home: Scaffold(
        appBar: AppBar(
          title: Text("Questions"),
        ),
        body: Column(
          children: <Widget>[
            //Access the value of the map by key
            Question(question[_questionIndex]['questionText']),
            ...(question[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
