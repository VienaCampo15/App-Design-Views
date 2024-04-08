import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:vistas/app/widgets/appbar/title_appbar.dart';
import 'package:vistas/app/widgets/backgrounds/search_image.dart';
import 'package:vistas/app/widgets/containers/caption_container.dart';
import 'package:vistas/main.dart';

class SearchTakingAPhotoTemplate extends StatefulWidget {
  const SearchTakingAPhotoTemplate({Key? key}) : super(key: key);

  @override
  _SearchTakingAPhotoTemplateState createState() => _SearchTakingAPhotoTemplateState();
}

class _SearchTakingAPhotoTemplateState extends State<SearchTakingAPhotoTemplate> {
  ImageProvider? _backgroundImage;

  @override
  void initState() {
    super.initState();
    _backgroundImage = const AssetImage(Assets.searchTakingPhoto);
  }

  Future<void> _takePhoto() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _backgroundImage = FileImage(File(pickedFile.path));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.secondaryWhite,
      body: Column(
        children: [
          const CustomAppBar(titleText: "Search by taking a photo"),
          Expanded(
            child: SearchImageWidget(
              backgroundImage: _backgroundImage!,              
            ),
          ),
          CaptionContainer(
            onImageSelected: (ImageProvider image) {
              setState(() {
                _backgroundImage = image;
              });
            },
          ),
        ],
      ),
    );
  }
}
