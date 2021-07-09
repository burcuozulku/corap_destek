import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomAppBar extends StatelessWidget {
  CustomAppBar(
      {required this.title,
      required this.isVisible,
      required this.icon,
      required this.onPressed});
  final String title;
  final bool isVisible;
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.west, size: 27),
            onPressed: () => Navigator.pop(context),
          ),
          Text(
            title,
            style: GoogleFonts.poppins(fontSize: 26, fontWeight: FontWeight.w500),
          ),
          Visibility(
            child: IconButton(
                icon: Icon(icon, size: 25), onPressed: () => onPressed),
            visible: isVisible,
          ),
        ],
      ),
    );
  }
}
