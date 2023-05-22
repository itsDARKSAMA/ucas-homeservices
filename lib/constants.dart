import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeservices/views/screens/auth/login_screen.dart';
import 'package:homeservices/views/screens/auth/signup_screen.dart';
import 'package:homeservices/views/screens/cards/card_info_field_screen.dart';
import 'package:homeservices/views/screens/cards/card_info_screen.dart';
import 'package:homeservices/views/screens/cards/choice_card_screen.dart';
import 'package:homeservices/views/screens/home_screen.dart';
import 'package:homeservices/views/screens/onboarding_screen.dart';
import 'package:homeservices/views/widgets/custom_icons_widget.dart';
import 'package:homeservices/views/widgets/service_card_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// routes

var defaultScreensTranstion = Transition.native;

List<GetPage<dynamic>> getRoutes = [
  GetPage(
    name: "/",
    page: () => OnboardingScreen(),
    transition: defaultScreensTranstion,
  ),
  GetPage(
    name: "/home",
    page: () => const HomeScreen(),
    transition: defaultScreensTranstion,
  ),
  // GetPage(
  //   name: "/profile",
  //   page: () => const ProfileScreen(),
  //   transition: defaultScreensTranstion,
  // ),
  // GetPage(
  //   name: "/options",
  //   page: () => const MoreOptionsScreen(),
  //   transition: defaultScreensTranstion,
  // ),
  // GetPage(
  //   name: "/orders",
  //   page: () => const OrdersScreen(),
  //   transition: defaultScreensTranstion,
  // ),
  GetPage(
    name: "/onborading",
    page: () => OnboardingScreen(),
    transition: defaultScreensTranstion,
  ),
  GetPage(
    name: "/card-info",
    page: () => CardInfoScreen(),
    transition: defaultScreensTranstion,
  ),
  GetPage(
    name: "/card-info-field",
    page: () => const CardInfoFieldScreen(),
    transition: defaultScreensTranstion,
  ),
  GetPage(
    name: "/choice-card",
    page: () => ChoiceCardScreen(),
    transition: defaultScreensTranstion,
  ),
  GetPage(
    name: "/login",
    page: () => const LoginScreen(),
    transition: defaultScreensTranstion,
  ),
  GetPage(
    name: "/signup",
    page: () => const SignUpScreen(),
    transition: defaultScreensTranstion,
  ),
];

// COLORS
const primaryColor = Color(0xff346EDF);
const secondaryColor = Color(0xff6FC8FB);
const cyanColor = Color(0xff0E9CF9);
const blackColor = Color(0xff222328);
const greyColor = Color(0xff646781);
const lightGreyColor = Color(0xff7F8FA6);
const extraLightGreyColor = Color(0xffF0F0F0);
const whiteColor = Color(0xffFFFFFF);
const offWhiteColor = Color(0xffF2F6F6);
const pinkColor = Color(0xffDE1487);
const redColor = Color(0xffd55252);
const greenColor = Color(0xff00B3B3);
const orangeColor = Color(0xffAF8344);
Gradient primaryGradient = const LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [
    primaryColor,
    secondaryColor,
  ],
);
Gradient secondaryGradient = const LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [
    secondaryColor,
    primaryColor,
  ],
);

// FONT SIZES
const double extraLargeFontSize = 30;
const double largeFontSize = 24;
const double meduimFontSize = 20;
const double normalFontSize = 15;
const double smallFontSize = 12;

// Application Theme

ThemeData appTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
  appBarTheme: const AppBarTheme(
    elevation: 0.0,
    color: Colors.transparent,
  ),
  useMaterial3: true,
  fontFamily: 'Poppins',
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: orangeColor,
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: primaryColor,
      ),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: extraLightGreyColor),
    ),
  ),
);

// Application Services

List<Service> services(BuildContext context) => <Service>[
      Service(
        title: AppLocalizations.of(context)?.carpenter ?? 'Carpenter',
        icon: const CustomIcons(height: 50, icon: CustomAppIcons.ac),
        onTap: () => Get.toNamed(
          '/choice-card',
        ),
      ),
      Service(
        title: AppLocalizations.of(context)?.carpenter ?? 'Carpenter',
        icon: const CustomIcons(height: 50, icon: CustomAppIcons.lights),
        onTap: () => Get.toNamed(
          '/choice-card',
        ),
      ),
      Service(
        title: AppLocalizations.of(context)?.carpenter ?? 'Carpenter',
        icon: const CustomIcons(height: 50, icon: CustomAppIcons.water),
        onTap: () => Get.toNamed(
          '/choice-card',
        ),
      ),
      Service(
        title: AppLocalizations.of(context)?.carpenter ?? 'Carpenter',
        icon: const CustomIcons(height: 50, icon: CustomAppIcons.bugs),
        onTap: () => Get.toNamed(
          '/choice-card',
        ),
      ),
      Service(
        title: AppLocalizations.of(context)?.carpenter ?? 'Carpenter',
        icon: const CustomIcons(height: 50, icon: CustomAppIcons.cleans),
        onTap: () => Get.toNamed(
          '/choice-card',
        ),
      ),
      Service(
        title: AppLocalizations.of(context)?.carpenter ?? 'Carpenter',
        icon: const CustomIcons(height: 50, icon: CustomAppIcons.saw),
        onTap: () => Get.toNamed(
          '/choice-card',
        ),
      ),
      Service(
        title: AppLocalizations.of(context)?.carpenter ?? 'Carpenter',
        icon: const CustomIcons(height: 50, icon: CustomAppIcons.settingsLarge),
        onTap: () => Get.toNamed(
          '/choice-card',
        ),
      ),
      Service(
        title: AppLocalizations.of(context)?.carpenter ?? 'Carpenter',
        icon: const CustomIcons(height: 50, icon: CustomAppIcons.cleans),
        onTap: () => Get.toNamed(
          '/choice-card',
        ),
      ),
      Service(
        title: AppLocalizations.of(context)?.carpenter ?? 'Carpenter',
        icon: const CustomIcons(height: 50, icon: CustomAppIcons.saw),
        onTap: () => Get.toNamed(
          '/choice-card',
        ),
      ),
      Service(
        title: AppLocalizations.of(context)?.carpenter ?? 'Carpenter',
        icon: const CustomIcons(height: 50, icon: CustomAppIcons.ac),
        onTap: () => Get.toNamed(
          '/choice-card',
        ),
      ),
      Service(
        title: AppLocalizations.of(context)?.carpenter ?? 'Carpenter',
        icon: const CustomIcons(height: 50, icon: CustomAppIcons.lights),
        onTap: () => Get.toNamed(
          '/choice-card',
        ),
      ),
      Service(
        title: AppLocalizations.of(context)?.carpenter ?? 'Carpenter',
        icon: const CustomIcons(height: 50, icon: CustomAppIcons.water),
        onTap: () => Get.toNamed(
          '/choice-card',
        ),
      ),
    ];
