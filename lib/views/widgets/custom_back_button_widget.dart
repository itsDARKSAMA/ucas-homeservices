import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeservices/constants.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: whiteColor.withOpacity(0.3),
      ),
      child: InkWell(
        onTap: () => Get.back(),
        child: const Icon(
          Icons.arrow_back_ios_new,
          color: whiteColor,
        ),
      ),
    );
  }
}
