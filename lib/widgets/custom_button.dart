import 'package:flutter/material.dart';

import '../themes.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.name,
    required this.press,
  }) : super(key: key);

  final String name;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        minimumSize: const Size(double.infinity, 50),
        primary: secondColor,
      ),
      child: Text(
        name,
        style: textStyle1.copyWith(
          color: whiteColor,
          fontWeight: fontWeightBold,
        ),
      ),
    );
  }
}
