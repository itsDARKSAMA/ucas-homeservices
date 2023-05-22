import 'dart:convert';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:homeservices/constants.dart';
import 'package:homeservices/models/register.dart';
import 'package:homeservices/util/api_endpoints.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class CustomerSignUpController extends GetxController {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final Future<SharedPreferences> _pref = SharedPreferences.getInstance();
  bool isRememberChecked = false;

  checkButton() {
    isRememberChecked = !isRememberChecked;
    update();
  }

  Future<void> registerWithEmail() async {
    var url = Uri.parse(
      ApiEndpoitns.baseUrl + ApiEndpoitns.customerEndpoint.customerSignUp,
    );
    var body = Register(
      email: emailController.text.trim(),
      name: nameController.text,
      password: passwordController.text,
      phone: phoneController.text,
    ).toJson();

    try {
      http.Response response = await http.post(
        url,
        body: jsonEncode(body),
        headers: ApiEndpoitns.headers,
      );

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        if (json['success'] == true) {
          Get.snackbar(
            "Register",
            json["message"].toString(),
            backgroundColor: greenColor,
            colorText: Colors.white,
          );
          final token = json['data']['token'];
          final SharedPreferences prefs = await _pref;
          await prefs.setString("token", token);
          nameController.clear();
          emailController.clear();
          phoneController.clear();
          passwordController.clear();
          Get.back(result: true);
        } else {
          Get.snackbar(
            "Faild",
            json["message"].toString(),
            backgroundColor: redColor,
            colorText: Colors.white,
          );
        }
      }
    } catch (e) {
      Get.snackbar(
        'Error',
        e.toString(),
        backgroundColor: redColor,
        colorText: Colors.white,
      );
    }
  }
}
