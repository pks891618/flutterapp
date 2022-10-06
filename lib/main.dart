import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
void main() => runApp(VqcodesMain());

class VqcodesMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _VqcodesMainState();
  }
}

class _VqcodesMainState extends State<VqcodesMain> {
    static const questions = [
      {
      'questiontext':'Whats \'s your favourite color ?'
      ,'answers':['red','gree','black','orange']
      },
      {
      'questiontext':'Whats \'s your favourite Instructor ?'
      ,'answers':['Sahil','Pankaj','Rajan','MAx'],
      },
      {
      'questiontext':'Whats \'s your favourite animal ?'
      ,'answers':['Dog','Cat','Cow','Tiger'],
      }
   
    ];
  var _questionIndex = 0;
  void _answerQuestion() {
  
    if(_questionIndex < questions.length){
        print("We have more questions ");
    }
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My First App!!  VQCODES")),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questiontext']),
           ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
            return Answer(_answerQuestion,answer);
           }).toList()
          ],
        ),
      ),
    );
  }
}
