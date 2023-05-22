import 'package:flutter/material.dart';
import 'package:homeservices/constants.dart';

class CustomTextField extends StatefulWidget {
  final bool isLarge;
  final bool isPassword;
  final TextEditingController controller;
  final String textHint;
  const CustomTextField({
    super.key,
    this.isPassword = false,
    this.isLarge = false,
    required this.controller,
    required this.textHint,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 120,
      width: MediaQuery.of(context).size.width - 50,
      child: TextField(
        controller: widget.controller,
        style: TextStyle(
            color: widget.isPassword
                ? (!_isVisible ? primaryColor : lightGreyColor)
                : primaryColor,
            fontWeight: FontWeight.w500,
            fontSize: normalFontSize,
            overflow: TextOverflow.ellipsis),
        obscureText: widget.isPassword ? _isVisible : false,
        obscuringCharacter: '*',
        maxLines: widget.isLarge ? 4 : 1,
        decoration: InputDecoration(
          hintText: widget.textHint,
          // contentPadding: EdgeInsets.only(left: 10, bottom: 5),
          suffixIcon: widget.isPassword
              ? InkWell(
                  onTap: () {
                    setState(() {
                      _isVisible = !_isVisible;
                    });
                  },
                  child: Icon(
                    _isVisible ? Icons.visibility : Icons.visibility_off,
                  ),
                )
              : null,
          suffixIconColor: lightGreyColor,
          // pre
        ),
      ),
    );
  }
}
