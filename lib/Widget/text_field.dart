import 'package:flutter/material.dart';

class ApptextField extends StatelessWidget {
  final String title;
  final bool obscureText;
  const ApptextField({Key? ke, required this.title, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.black38, fontFamily: 'gotham'),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          obscureText: obscureText,
          cursorColor: Colors.white,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            filled: true,
            fillColor: Colors.white,
            labelStyle: TextStyle(color: Colors.black38, fontFamily: 'gotham'),
          ),
        ),
      ],
    );
  }
}