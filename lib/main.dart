import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:homeservices/constants.dart';
import 'package:homeservices/views/screens/splash_screen.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const HomeServicesApp());
}

class HomeServicesApp extends StatelessWidget {
  const HomeServicesApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return GetMaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      title: AppLocalizations.of(context)?.appTitle ?? 'UCAS Home Services',
      onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
      theme: appTheme,
      getPages: getRoutes,
      home: SplashScreen(),
    );
  }
}
