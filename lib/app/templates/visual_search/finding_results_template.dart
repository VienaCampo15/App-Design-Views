import 'package:flutter/material.dart';
import 'package:vistas/app/widgets/texts/title_text.dart';
import 'package:vistas/main.dart';

class FindingResultsTemplate extends StatelessWidget {
  const FindingResultsTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: [
              Icon(
                Icons.search,
                size: 80,
                color: UIColors.primaryRed,
              ),
              UISizeBox.gapH15,
              TitleText(
                text: "Finding similar results ...",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
