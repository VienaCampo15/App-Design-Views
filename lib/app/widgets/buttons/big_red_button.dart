import 'package:flutter/material.dart';
import 'package:vistas/main.dart'; 

class BigRedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const BigRedButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: UIColors.primaryRed,
            foregroundColor: UIColors.primaryWhite,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            textStyle: white15w400,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10), 
            elevation: 0, 
          ),
          child: Text(buttonText.toUpperCase()),
        ),
      ),
    );
  }
}
