import 'package:flutter/material.dart';
import 'package:vistas/main.dart'; // Asegúrate de que este import sea correcto

class TextWithArrowButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const TextWithArrowButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        alignment: Alignment.centerRight, 
        child: InkWell(
          onTap: onPressed,
          child: Row(
            mainAxisSize: MainAxisSize.min, 
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: [
              Text(
                text,
                style: black14bold, 
              ),
              const Icon(
                Icons.arrow_right_alt,
                color: UIColors.primaryRed, 
                size: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
