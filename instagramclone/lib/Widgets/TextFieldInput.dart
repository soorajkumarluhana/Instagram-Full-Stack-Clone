import 'package:flutter/material.dart';

class TextFieldsInput extends StatelessWidget {
  
final TextEditingController textEditingController;
   bool isPass = false;
  final String hintText;
  final TextInputType textFieldInput;
   TextFieldsInput({
    Key? key,
    required this.textEditingController,
    required this.isPass,
    required this.hintText,
    required this.textFieldInput,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    final InputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context)
    );
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintText,
        border: InputBorder,
        focusedBorder: InputBorder,
        enabledBorder: InputBorder,
        filled: true,
        contentPadding : const EdgeInsets.all(8),
      ),
      keyboardType: textFieldInput,
      obscureText: isPass,
    )  ; 
  }
}
