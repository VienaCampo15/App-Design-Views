import 'package:flutter/material.dart';
import 'package:vistas/main.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;

  const CustomAppBar({
    Key? key,
    this.titleText = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: UIColors.primaryBlack),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Text(
          titleText,
          style: black20w600,
        ),
      ),
      backgroundColor: UIColors.secondaryWhite,
      elevation: 0,
      centerTitle: true, 
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
