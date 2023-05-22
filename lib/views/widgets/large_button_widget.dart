import 'package:flutter/material.dart';
import 'package:homeservices/constants.dart';

class LargeButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  const LargeButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width - 70,
        height: 55,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: blackColor,
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
