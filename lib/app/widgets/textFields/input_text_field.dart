import 'package:flutter/material.dart';
import 'package:vistas/main.dart'; 

enum TextFieldState { normal, check, error }

class CustomTextField extends StatefulWidget {
  final TextFieldState state;
  final String labelText;
  final String? errorText;
  final TextInputType customTextInputType;

  const CustomTextField({
    Key? key,
    required this.state,
    required this.labelText,
    this.errorText,
    this.customTextInputType = TextInputType.text,
  }) : super(key: key);

  @override
  CustomTextFieldState createState() => CustomTextFieldState();
}

class CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    Widget? suffixIcon;
    OutlineInputBorder borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide.none,
    );

    TextStyle labelStyle = widget.state == TextFieldState.error
        ? gray16w600.copyWith(color: UIColors.primaryRed) 
        : gray16w600; 

    switch (widget.state) {
      case TextFieldState.error:
        borderStyle = OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: UIColors.primaryRed, width: 1),
        );
        suffixIcon = null;
        break;
      case TextFieldState.check:
        suffixIcon = const Icon(Icons.check, color: UIColors.checkGreen, size: 30);
        break;
      case TextFieldState.normal:
      default:
        suffixIcon = null;
    }

    TextInputType keyboardType = widget.customTextInputType;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: TextFormField(
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: widget.labelText,
          filled: true, 
          fillColor: UIColors.primaryWhite,
          suffixIcon: suffixIcon,
          border: borderStyle,
          enabledBorder: borderStyle,
          focusedBorder: borderStyle.copyWith(
            borderSide: BorderSide(
              color: widget.state == TextFieldState.error ? UIColors.primaryRed : UIColors.primaryWhite,
              width: 1,
            ),
          ),
          errorText: widget.state == TextFieldState.error ? widget.errorText : null, // Muestra el mensaje de error si el estado es error
          contentPadding: const EdgeInsets.symmetric(vertical: 25, horizontal: 12), 
          labelStyle: labelStyle, // Aplica el estilo determinado basado en el estado
        ),          
      ),
    );
  }
}
