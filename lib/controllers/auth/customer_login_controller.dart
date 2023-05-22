import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeservices/constants.dart';
import 'package:homeservices/models/register.dart';
import 'package:homeservices/util/api_endpoints.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:developer' as dev;

class CustomerLoginController extends GetxController {
  // final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final Future<SharedPreferences> _pref = SharedPreferences.getInstance();
  bool isRememberChecked = false;

  checkButton() {
    isRememberChecked = !isRememberChecked;
    update();
  }

  Future<void> loginWithEmail() async {
    var url = Uri.parse(
      ApiEndpoitns.baseUrl + ApiEndpoitns.customerEndpoint.customerLogin,
    );
    var body = Register(
      email: emailController.text.trim(),
      password: passwordController.text,
      // phone: phoneController.text,
    ).toJson();

    try {
      dev.log("i'm here dark 1");
      http.Response response = await http.post(
        url,
        body: jsonEncode(body),
        headers: ApiEndpoitns.headers,
      );
      dev.log("i'm here dark 2");

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        if (json['success'] == true) {
          Get.snackbar(
            "Login",
            json["message"].toString(),
            backgroundColor: greenColor,
            colorText: Colors.white,
          );

          final token = json['data']['token'];
          final name = json['data']['name'];
          final email = json['data']['email'];
          final photo = json['data']['photo'];

          final SharedPreferences prefs = await _pref;
          await prefs.setString("token", token);
          await prefs.setString("name", name);
          await prefs.setString("email", email);
          await prefs.setString("photo", photo);

          emailController.clear();
          // phoneController.clear();
          passwordController.clear();
          Get.offAllNamed("/home");
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
