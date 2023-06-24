import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProviderLoginController extends GetxController {
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _isRememberChecked = false;
  bool get isRememberChecked => _isRememberChecked;

  void toggleRemember() {
    _isRememberChecked = !_isRememberChecked;
    update();
  }
}
