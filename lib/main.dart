// ignore_for_file: deprecated_member_use, avoid_print
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// 轉換成私有類
class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 20},
        {'text': 'Green', 'score': 30},
        {'text': 'White', 'score': 0},
      ]
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 30},
        {'text': 'Dog', 'score': 20},
        {'text': 'Cat', 'score': 0},
        {'text': 'Bird', 'score': 10},
      ]
    },
    {
      'question': 'What\'s your favorite habit?',
      'answers': [
        {'text': 'Reading', 'score': 10},
        {'text': 'Walking', 'score': 0},
        {'text': 'Coding', 'score': 20},
        {'text': 'Playing', 'score': 40},
      ]
    },
  ];

  // 增加底線私有屬性
  int _questionIndex = 0;
  int _totalScore = 0;

  // 函示宣告(私有函式)
  void _answerQuestion(int score) {
    if (_questionIndex >= _questions.length) {
      return;
    }
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(title: Text('First App'));
    var appBody = _questionIndex < _questions.length
        ? Quiz(
            answerQuestion: _answerQuestion,
            questions: _questions,
            questionIndex: _questionIndex,
          )
        : Result(_totalScore);

    return MaterialApp(
        home: Scaffold(
      appBar: appBar,
      body: appBody,
    ));
  }
}
