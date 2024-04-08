import 'package:flutter/material.dart';
import 'package:vistas/main.dart';

class IconButtonWithText extends StatelessWidget {
  final IconData iconData;
  final String text;

  const IconButtonWithText({
    Key? key,
    required this.iconData,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min, 
        mainAxisAlignment: MainAxisAlignment.center, 
        children: <Widget>[
          IconButton(
            icon: Icon(iconData, color: UIColors.primaryGray, size: 35),
            onPressed: () {}, 
          ),
          Text(text, style: gray16w600),
        ],
      ),
    );
  }
}
