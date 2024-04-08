import 'package:flutter/material.dart';
import 'package:vistas/main.dart';

class ScrollRow extends StatelessWidget {
  final String title;
    final String sub;
  const ScrollRow({super.key, required this.title, required this.sub});

  @override
  Widget build(BuildContext context) {
    
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(title, style: titleBlack34w700),
          ),
        ),
        UISizeBox.gapH5,
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(sub, style: gray13bold),
          ),
        ),
        UISizeBox.gapH20,
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: SizedBox(
            height: 280,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[            
                  UISizeBox.gapW30,
                ],
              ),
            ),
          ),
        ),
        UISizeBox.gapH30,
      ],
    );
  }
}
