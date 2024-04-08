import 'package:flutter/material.dart';
import 'package:vistas/app/widgets/buttons/big_red_button.dart';
import 'package:vistas/app/widgets/textFields/input_text_field.dart';
import 'package:vistas/app/widgets/appbar/title_appbar.dart';
import 'package:vistas/app/widgets/texts/title_text.dart';
import 'package:vistas/main.dart';

class ForgotPasswordTemplate extends StatelessWidget {
  const ForgotPasswordTemplate({Key? key}) : super(key: key);

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
                child: TitleText(text: "Forgot password"),
              ),
            ),
            UISizeBox.gapH80,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Please, enter your email address. You will receive a link to create a new password via email.",
                style: black15bold.copyWith(
                  height: 1.5, 
                ),
              ),
            ),
            UISizeBox.gapH20,
            const CustomTextField(
              state: TextFieldState.normal,
              labelText: "Email",
              errorText: "Not a valid email address. Should be your@email.com",
              customTextInputType: TextInputType.emailAddress,
            ),
            UISizeBox.gapH50,
            BigRedButton(
              buttonText: "SEND",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
