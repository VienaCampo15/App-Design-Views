import 'package:flutter/material.dart';
import 'package:vistas/main.dart';

class SearchImageWidget extends StatelessWidget {
  final ImageProvider backgroundImage;
  final bool applyOpacity;

  const SearchImageWidget({
    Key? key,
    required this.backgroundImage,
    this.applyOpacity = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, 
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: backgroundImage,
          fit: BoxFit.cover,
        ),
        color: applyOpacity ? UIColors.primaryBlack.withOpacity(0.5) : null,
      ),
    );
  }
}
