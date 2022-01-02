// ignore_for_file: deprecated_member_use, avoid_print
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  const Result(this.resetHandler, this.resultScore);

  // 使用屬性
  String get resultPhrase {
    String resultText;
    if (resultScore == 100) {
      resultText = 'Awsome!';
    } else if (resultScore >= 90) {
      resultText = 'Perfect!';
    } else if (resultScore >= 70) {
      resultText = 'Not bad!';
    } else {
      resultText = 'too bad!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            textColor: Colors.green,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
