import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeservices/constants.dart';
import 'package:homeservices/controllers/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  final SplashController _controller = Get.put(SplashController());

  SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(
          init: _controller,
          builder: (controller) {
            return Container(
              alignment: Alignment.centerRight,
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      primaryColor,
                      secondaryColor,
                    ]),
              ),
              child: Image.asset(
                "assets/images/splashLogo.png",
                width: 254,
                height: 342,
              ),
            );
          }),
    );
  }
}
