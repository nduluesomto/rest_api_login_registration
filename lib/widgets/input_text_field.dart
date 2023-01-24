import 'package:flutter/material.dart';

class InputTextFieldWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  const InputTextFieldWidget(
      {Key? key, required this.textEditingController, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
          hintText: hintText,
          alignLabelWithHint: true,
          fillColor: Colors.white54,
          hintStyle: const TextStyle(color: Colors.grey),
          contentPadding: const EdgeInsets.only(bottom: 15),
          focusColor: Colors.white60,
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black))),
    );
  }
}
