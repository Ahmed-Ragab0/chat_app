import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  CustomTextField(
      {required this.text,
      required this.onChanged,
      this.icon,
      this.obsecure = false});

  Function(String)? onChanged;
  final String text;
  Widget? icon;
  bool? obsecure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecure!,
      style: TextStyle(color: Colors.white),
      validator: (value) {
        if (value!.isEmpty) {
          return 'field is required';
        }
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        suffixIcon: icon,
        hintText: text,
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.white,
        )),
        border: const OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.white,
        )),
      ),
    );
  }
}
