import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class BrunaoBotao extends StatelessWidget {
  final Function()? onPressed;
  final String buttonText;

  BrunaoBotao({required this.onPressed, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 60,
      child: ElevatedButton(
        style: ButtonStyle(
          alignment: Alignment.center,
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
              ),
          ),
      ),
        onPressed: onPressed,
        child: Text(buttonText),
      ),
    );
  }
}
