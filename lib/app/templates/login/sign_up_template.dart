// Importa los paquetes y archivos necesarios
import 'package:flutter/material.dart';
import 'package:vistas/app/widgets/buttons/big_red_button.dart';
import 'package:vistas/app/widgets/textFields/input_text_field.dart';
import 'package:vistas/app/widgets/containers/social_media.dart';
import 'package:vistas/app/widgets/texts/text_arrow.dart';
import 'package:vistas/app/widgets/appbar/title_appbar.dart';
import 'package:vistas/app/widgets/texts/title_text.dart';
import 'package:vistas/main.dart';

class SignUpTemplate extends StatelessWidget {
  const SignUpTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.secondaryWhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(),
            UISizeBox.gapH20,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Align(
                alignment: Alignment.topLeft,
                child: TitleText(text: "Sign up"),
              ),
            ),
            UISizeBox.gapH80,
            const CustomTextField(
              state: TextFieldState.check,
              labelText: "Name",
            ),
            UISizeBox.gapH10,
            const CustomTextField(
              state: TextFieldState.normal,
              labelText: "Email",
              errorText: "Not a valid email address. Should be your@email.com",
              customTextInputType: TextInputType.emailAddress,
            ),
            UISizeBox.gapH10,
            const CustomTextField(
              state: TextFieldState.normal,
              labelText: "Password",
              customTextInputType: TextInputType.text,
            ),
            UISizeBox.gapH10,
            TextWithArrowButton(
              text: "Already have an account?",
              onPressed: () {},
            ),
            UISizeBox.gapH20,
            BigRedButton(
              buttonText: "SIGN UP",
              onPressed: () {},
            ),
            UISizeBox.gapH60,
            const SocialMediaEnter(text: "Or sign up with social account"),
          ],
        ),
      ),
    );
  }
}
