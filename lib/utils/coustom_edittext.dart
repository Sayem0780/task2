import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  CustomTextfield(
      {Key? key,
        required this.Controller,
        required this.color,
        required this.title,
        required this.obscureText,
        required this.readOnly,
        this.icon})
      : super(key: key);

  final TextEditingController Controller;
  Color color;
  String title;
  bool obscureText = false;
  bool readOnly = false;
  Widget? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly,
      obscureText: obscureText,
      controller: Controller,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: color,
        suffixIcon: icon,
        labelStyle: TextStyle(color: Colors.white),
        hintText: title,
        hintStyle: TextStyle(
          color: Colors.white.withOpacity(.6),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(30),
        ),
        disabledBorder: InputBorder.none,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Colors.blue
          ),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}