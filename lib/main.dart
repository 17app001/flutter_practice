// ignore_for_file: deprecated_member_use, avoid_print

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// 轉換成私有類
class _MyAppState extends State<MyApp> {
  final questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
  ];

  int questionIndex = 0;

  // 函示宣告
  void answerQuestion() {
    setState(() {
      if (++questionIndex >= questions.length) {
        questionIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(title: Text('First App'));
    var appBody = Column(
      children: [
        Text(questions.elementAt(questionIndex)),
        // 匿名函示用法
        RaisedButton(child: Text('Answer1'), onPressed: () => print('answer1')),
        RaisedButton(
            child: Text('Answer2'),
            onPressed: () {
              print('answer2');
            }),
        RaisedButton(child: Text('Answer3'), onPressed: answerQuestion),
      ],
    );

    return MaterialApp(
        home: Scaffold(
      appBar: appBar,
      body: appBody,
    ));
  }
}
