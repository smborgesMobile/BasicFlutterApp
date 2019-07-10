import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        _questionIndex =_questionIndex + 1;
      }else{
        _questionIndex = 0;
      }
    });

    print(_questionIndex);
  }

  var question = [
    'What is your favorite color?',
    'What is your favorite animal?'
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
            Text(question.elementAt(_questionIndex)),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 4'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}