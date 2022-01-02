// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answrer Choose!');
  }

  final questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
  ];

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(title: Text('First App'));
    var appBody = Column(
      children: [
        Text('MainPage'),
        RaisedButton(child: Text('Answer1'), onPressed: answerQuestion),
        RaisedButton(child: Text('Answer2'), onPressed: answerQuestion),
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
