import 'package:flutter/material.dart';

class BrunaoForm extends StatelessWidget{

    final String label;
    final TextEditingController userInputController;

    

BrunaoForm({
    required this.label,
    required this.userInputController,

});

 @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: userInputController,
      decoration: InputDecoration(
        label: Text(label),
      ),
    );
  }
}