import 'package:flutter/material.dart';
import 'package:vistas/app/templates/main_page/main_page_template.dart';
import 'package:vistas/app/templates/visual_search/finding_results_template.dart';
import 'package:vistas/app/templates/login/forgot_password_template.dart';
import 'package:vistas/app/templates/visual_search/search_taking_photo_template.dart';
import 'package:vistas/app/templates/visual_search/visual_search_template.dart';

part 'res/colors.dart';
part 'res/styleFont.dart';
part 'res/sizedbox.dart';
part 'res/assets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: SignUpTemplate(), 
      // home: LogInTemplate(),
      // home: ForgotPasswordTemplate(),
      // home: VisualSearchTemplate(),
      // home: SearchTakingAPhotoTemplate(),
      // home: FindingResultsTemplate(),
      home: MainPageTemplate(),
    );
  }
}
