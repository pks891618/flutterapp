import 'package:flutter/material.dart';

class Answer extends StatelessWidget { 
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
      return Container(
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        child:ElevatedButton(          
          onPressed: selectHandler, child: Text(answerText)
          ),
      );
  }
}
/*

import 'package:flutter/material.dart';

class Answer extends StatelessWidget { 
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
      return Container(
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        child:ElevatedButton(          
          onPressed: selectHandler, child: Text(answerText)
          ),
      );
  }
}

*/