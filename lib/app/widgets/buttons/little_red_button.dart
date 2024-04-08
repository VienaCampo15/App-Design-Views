import 'package:flutter/material.dart';
import 'package:vistas/main.dart';

class LittleRedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const LittleRedButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.4,
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: UIColors.primaryRed,
          foregroundColor: UIColors.primaryWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          textStyle: white15bold,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          elevation: 0,
        ),
        child: Text(buttonText),
      ),
    );
  }
}
