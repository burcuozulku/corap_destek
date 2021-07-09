import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'text_field_container.dart';

class AddingTextField extends StatelessWidget {
  final int maxLines;
  final String hintText;
  final controller;
  AddingTextField({
    required this.controller,
    required this.maxLines,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        maxLines: maxLines,
        controller: controller,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            hintText: hintText,
            hintStyle: GoogleFonts.poppins(fontSize: 15)),
      ),
    );
  }
}
