import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:vistas/app/widgets/appbar/title_appbar.dart';
import 'package:vistas/app/widgets/backgrounds/visual_search_background.dart';
import 'package:vistas/app/widgets/buttons/big_red_button.dart';
import 'package:vistas/app/widgets/buttons/transparen_button_white_border.dart';
import 'package:vistas/main.dart'; 

class VisualSearchTemplate extends StatefulWidget {
  const VisualSearchTemplate({Key? key}) : super(key: key);

  @override
  _VisualSearchTemplateState createState() => _VisualSearchTemplateState();
}

class _VisualSearchTemplateState extends State<VisualSearchTemplate> {
  ImageProvider? backgroundImage;

  @override
  void initState() {
    super.initState();
    backgroundImage = const AssetImage(Assets.visualSearch);
  }

  Future<void> _takePhoto() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        backgroundImage = FileImage(File(pickedFile.path));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.secondaryWhite,
      body: Column(
        children: [
          const CustomAppBar(titleText: "Visual search"),
          Expanded(
            child: BackgroundImageWidget(
              backgroundImage: backgroundImage!, 
              applyOpacity: true,
              child: Container(
                padding: const EdgeInsets.all(16.0), 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, 
                  children: [
                    const Text("Search for an outfit by taking a photo or uploading an image", 
                      style: white26semibold, 
                    ),
                    UISizeBox.gapH40, 
                    BigRedButton(
                      buttonText: "TAKE A PHOTO", 
                      onPressed: _takePhoto 
                    ),
                    UISizeBox.gapH20, 
                    TransparentButtonWithWhiteBorder(
                      buttonText: "UPLOAD AN IMAGE", 
                      onPressed: (){} 
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
