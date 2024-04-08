import 'package:flutter/material.dart';
import 'package:vistas/main.dart'; // Asegúrate de que black14bold y UISizeBox estén definidos aquí

class SocialMediaEnter extends StatelessWidget {
  final String text;

  const SocialMediaEnter({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          text,
          style: black14bold,
          textAlign: TextAlign.center,
        ),
        UISizeBox.gapH20,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            socialMediaContainer(
              imageName: Assets.google,
              onPressed: () {},
            ),
            UISizeBox.gapW30,
            socialMediaContainer(
              imageName: Assets.facebook,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }

  Widget socialMediaContainer({
    required String imageName,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 70,
        width: 90,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: UIColors.primaryWhite,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 1,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Image.asset(
            imageName,
            width: 25,
            height: 25,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
