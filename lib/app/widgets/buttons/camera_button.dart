import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vistas/main.dart';

typedef OnImageSelected = Function(ImageProvider image);

class CameraButtonWidget extends StatefulWidget {
  final OnImageSelected onImageSelected;

  const CameraButtonWidget({Key? key, required this.onImageSelected})
      : super(key: key);

  @override
  _CameraButtonWidgetState createState() => _CameraButtonWidgetState();
}

class _CameraButtonWidgetState extends State<CameraButtonWidget> {
  Future<void> _openCamera() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      final image = FileImage(File(pickedFile.path));
      widget.onImageSelected(image);
    } else {
      print('No se seleccionó ninguna imagen.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shape: const CircleBorder(),
      ),
      onPressed: _openCamera,
      child: Container(
        width: 60,
        height: 60,
        decoration: const BoxDecoration(
          color: UIColors.primaryRed, 
          shape: BoxShape.circle, 
        ),
        child: const Icon(
          Icons.camera_alt, 
          color: Colors.white,
          size: 30, 
        ),
      ),
    );
  }
}
