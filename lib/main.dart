// ignore_for_file: deprecated_member_use, avoid_print
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
    {
      'question': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Dog', 'Cat', 'Bird']
    },
    {
      'question': 'What\'s your favorite habit?',
      'answers': ['Reading', 'Walking', 'Coding', 'Playing']
    },
  ];

  // 增加底線私有屬性
  int _questionIndex = 0;

  // 函示宣告(私有函式)
  void _answerQuestion() {
    setState(() {
      if (++_questionIndex >= questions.length) {
        _questionIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(title: Text('First App'));
    var appBody = Column(
      children: [
        // 使用as確認類型
        Question(questions[_questionIndex]['question'] as String),
        // 使用callback
        ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(_answerQuestion, answer);
        }).toList(),
      ],
    );

    return MaterialApp(
        home: Scaffold(
      appBar: appBar,
      body: appBody,
    ));
  }
}
