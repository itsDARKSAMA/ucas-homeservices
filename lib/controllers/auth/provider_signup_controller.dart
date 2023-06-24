import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProviderSignupController extends GetxController {
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  bool _isAccepted = false;
  bool get isAccepted => _isAccepted;

  void toggleAccept() {
    _isAccepted = !_isAccepted;
    update();
  }
}
