import 'package:flutter/material.dart';
import 'background_icon.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  static const svgIcon2 = 'assets/icons/2.svg';
  static const svgIcon3 = 'assets/icons/3.svg';
  static const svgIcon7 = 'assets/icons/7.svg';
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SvgIcons(
          top: 290,
          left: -10,
          height: 200,
          width: 200,
          svgName: svgIcon2,
          degree: 0),
      SvgIcons(
          top: 60,
          left: 280,
          height: 150,
          width: 150,
          svgName: svgIcon7,
          degree: -30),
      SvgIcons(
          top: 620,
          left: 300,
          height: 150,
          width: 150,
          svgName: svgIcon3,
          degree: -20),
    ]);
  }
}
