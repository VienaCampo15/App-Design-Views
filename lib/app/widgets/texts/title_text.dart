import 'package:flutter/material.dart';
import 'package:vistas/main.dart';

class TitleText extends StatelessWidget {
  final String text;

  const TitleText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center, 
      style: titleBlack34w700,
    );
  }
}
