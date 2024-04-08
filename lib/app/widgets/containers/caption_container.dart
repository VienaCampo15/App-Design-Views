import 'package:flutter/material.dart';
import 'package:vistas/app/widgets/buttons/camera_button.dart';
import 'package:vistas/main.dart'; // Asegúrate de que UIColors y UISizeBox estén definidos aquí.

class CaptionContainer extends StatelessWidget {
  final OnImageSelected onImageSelected;

  const CaptionContainer({Key? key, required this.onImageSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.flash_on,
            color: UIColors.primaryBlack,
            size: 25,
          ),
          UISizeBox.gapW50,          
          CameraButtonWidget(
            onImageSelected: onImageSelected, 
          ),
          UISizeBox.gapW50,
          const Icon(
            Icons.loop,
            color: UIColors.primaryBlack,
            size: 25,
          ),
        ],
      ),
    );
  }
}
