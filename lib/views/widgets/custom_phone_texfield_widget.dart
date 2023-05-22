import 'package:flutter/material.dart';
import 'package:homeservices/constants.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CustomPhoneTextField extends StatelessWidget {
  const CustomPhoneTextField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 50,
      child: IntlPhoneField(
        style: const TextStyle(
          color: primaryColor,
          fontWeight: FontWeight.w500,
          fontSize: normalFontSize,
          overflow: TextOverflow.ellipsis,
        ),
        flagsButtonPadding: const EdgeInsets.symmetric(horizontal: 10),
        controller: controller,
        decoration: const InputDecoration(
          counterText: "",
        ),
        showDropdownIcon: false,
        initialCountryCode: 'SA',
        dropdownTextStyle: const TextStyle(
          color: greyColor,
          fontWeight: FontWeight.w500,
          fontSize: normalFontSize,
          overflow: TextOverflow.ellipsis,
        ),
        // textAlignVertical: TextAlignVertical.center,
        invalidNumberMessage: "Invalid Number",
      ),
    );
  }
}
