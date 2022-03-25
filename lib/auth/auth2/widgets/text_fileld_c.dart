import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final String label;
  final bool isPass;

  const TextFieldCustom({Key? key, required this.label, required this.isPass})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .9,
        child: TextField(
          obscureText: isPass,
          decoration: InputDecoration(
              labelText: label,
              labelStyle: TextStyle(color: Colors.grey[700]),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[700]!))),
        ),
      ),
    );
  }
}
