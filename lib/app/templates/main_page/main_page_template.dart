import 'package:flutter/material.dart';
import 'package:vistas/app/widgets/appbar/bottom_bar.dart';
import 'package:vistas/app/widgets/backgrounds/visual_search_background.dart';
import 'package:vistas/app/widgets/buttons/little_red_button.dart';
import 'package:vistas/app/widgets/containers/scroll_row.dart';
import 'package:vistas/main.dart';

class MainPageTemplate extends StatelessWidget {
  const MainPageTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView( 
        child: Column(
          children: <Widget>[
            SizedBox(
              height: screenHeight * 0.7,
              child: BackgroundImageWidget(
                backgroundImage: const AssetImage(Assets.fashionSale),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 20),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Fashion \nsale", style: white45bold),
                        UISizeBox.gapH10,
                        LittleRedButton(
                          buttonText: "Check",
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            UISizeBox.gapH30,
            const ScrollRow(
              title: "New",
              sub: "You've never seen it before!",
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(), 
    );
  }
}

