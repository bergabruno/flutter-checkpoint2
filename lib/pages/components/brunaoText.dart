import 'package:checkpoint2/pages/components/BrunaoForm.dart';
import 'package:flutter/material.dart';

class BrunaoText extends StatelessWidget{
  final String texto;

  BrunaoText(this.texto);


  @override
  Widget build(BuildContext context){
    return Text(
      texto,
      style: TextStyle( fontSize: 25.0),
      
    );
  
}



}
