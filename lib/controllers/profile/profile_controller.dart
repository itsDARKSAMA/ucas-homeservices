import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfileController extends GetxController {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late final String name;
  late final String email;
  late final String photo;

  List<Map<String, dynamic>> options(BuildContext context) => [
        {
          "title": AppLocalizations.of(context)?.language ?? "Language",
          "onTap": () {},
          "content": AppLocalizations.of(context)?.languageContent ?? "English"
        },
        {
          "title": AppLocalizations.of(context)?.myRates ?? "My Rates",
          "onTap": () {}
        },
        {
          "title": AppLocalizations.of(context)?.contactUs ?? "Contact us",
          "onTap": () {}
        },
        {
          "title": AppLocalizations.of(context)?.shareApp ?? "Share App",
          "onTap": () {}
        },
      ];

  @override
  Future<void> onInit() async {
    super.onInit();
    final prefs = await _prefs;
    photo = (prefs.getString("photo"))!;
    name = (prefs.getString("name"))!;
    email = (prefs.getString("email"))!;
  }

  Future<void> logout() async {
    final prefs = await _prefs;
    await prefs.remove("token");
    await prefs.remove("name");
    Get.offAllNamed("/login");
  }
}
