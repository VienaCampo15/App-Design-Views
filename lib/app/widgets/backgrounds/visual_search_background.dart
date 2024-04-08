import 'package:flutter/material.dart';
import 'package:vistas/main.dart';

class BackgroundImageWidget extends StatelessWidget {
  final Widget child;
  final ImageProvider backgroundImage;
  final bool applyOpacity;

  const BackgroundImageWidget({
    Key? key,
    required this.child,
    required this.backgroundImage, 
    this.applyOpacity = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return SizedBox(
      width: screenSize.width,
      height: screenSize.height,
      child: Stack(
        children: [
          Container(
            width: screenSize.width,
            height: screenSize.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: backgroundImage, 
                fit: BoxFit.cover,
              ),
            ),
          ),
          if (applyOpacity)
            Container(
              width: screenSize.width,
              height: screenSize.height,
              decoration: BoxDecoration(
                color: UIColors.primaryBlack.withOpacity(0.5),
              ),
            ),
          child,
        ],
      ),
    );
  }
}
