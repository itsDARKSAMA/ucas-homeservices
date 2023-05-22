import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  @override
  void onReady() async {
    super.onReady();
    await Future.delayed(const Duration(milliseconds: 1500), () async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      if (prefs.containsKey("token")) {
        Get.offAllNamed('/home');
      } else {
        Get.offAllNamed('/onboarding');
      }
    });
  }
}
