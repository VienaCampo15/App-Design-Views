import 'package:flutter/material.dart';
import 'package:vistas/main.dart';

class TransparentButtonWithWhiteBorder extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const TransparentButtonWithWhiteBorder({
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
        child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.transparent, // Fondo transparente
            foregroundColor: UIColors.primaryWhite, // Color del texto
            side: const BorderSide(color: UIColors.primaryWhite, width: 2), // Borde blanco
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25), // Borde redondeado
            ),
            textStyle: white15w400, // Asumiendo que este es el estilo de texto que deseas
          ),
          child: Text(buttonText.toUpperCase()),
        ),
      ),
    );
  }
}
