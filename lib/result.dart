import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;

  final Function resetHandler;
  
  Result(this.resultScore,this.resetHandler);

 String get resultPhrase{
  String resultText ;
  if(resultScore<=8){
    resultText = ' $resultScore You are good';
  }else if(resultScore<=12){
    resultText = '$resultScore Pretty ';
  }else if(resultScore<=16){
    resultText = '$resultScore Strage ';
  }else{
    resultText = '$resultScore BADD ';
  }
   return resultText;
 }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children:<Widget>[
          Text(
            resultPhrase,
            style:TextStyle(fontSize:36,fontWeight:FontWeight.bold ),
            textAlign: TextAlign.center
            ),
            FlatButton(child: Text("Restart Quiz"),textColor:Colors.blue,onPressed: resetHandler,)
        ]
    ));
  }
}
