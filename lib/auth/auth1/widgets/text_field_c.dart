import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final String? hint;
  final bool? isPassword;

  const TextFieldCustom(
      {Key? key, required this.hint, required this.isPassword})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextField(
          textAlign: TextAlign.center,
          obscureText: isPassword!,
          style: const TextStyle(color: Colors.white, fontSize: 17),
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(10.0)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(10.0)),
            labelStyle: const TextStyle(color: Colors.white),
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.grey),
          )),
    );
  }
}
