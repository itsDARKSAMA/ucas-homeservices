import 'package:flutter/material.dart';
import 'package:homeservices/constants.dart';

class GradientButtonWidget extends StatelessWidget {
  final String text;
  final Function() onTap;
  const GradientButtonWidget(
      {super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 165,
        height: 55,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: secondaryGradient,
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
