import 'package:flutter/material.dart';
import 'package:vistas/app/widgets/buttons/icon_button_text.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 80, 
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButtonWithText(iconData: Icons.home_outlined, text: 'Home'),
          IconButtonWithText(iconData: Icons.shopping_cart_outlined, text: 'Shop'),
          IconButtonWithText(iconData: Icons.shopping_bag_outlined, text: 'Bag'),
          IconButtonWithText(iconData: Icons.favorite_border, text: 'Favorites'), 
          IconButtonWithText(iconData: Icons.person_outline, text: 'Profile'),
        ],
      ),
    );
  }
}
