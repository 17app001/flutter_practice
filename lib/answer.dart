//ignore_for_file: deprecated_member_use, avoid_print

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // callback
  final VoidCallback selectHanlder;
  final String answer;

  const Answer(this.selectHanlder, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(answer),
          onPressed: selectHanlder),
    );
  }
}
