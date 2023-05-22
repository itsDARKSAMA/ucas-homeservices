import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeservices/constants.dart';
import 'package:homeservices/views/widgets/custom_phone_texfield_widget.dart';
import 'package:homeservices/views/widgets/custom_textfield_widget.dart';
import 'package:homeservices/views/widgets/gradient_button_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProviderLoginScreen extends StatefulWidget {
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  ProviderLoginScreen({
    super.key,
  });

  @override
  State<ProviderLoginScreen> createState() => _ProviderLoginScreenState();
}

class _ProviderLoginScreenState extends State<ProviderLoginScreen> {
  bool _isRememberChecked = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomPhoneTextField(controller: widget.mobileController),
          const SizedBox(height: 30),
          CustomTextField(
            textHint: AppLocalizations.of(context)?.password ?? 'Password',
            controller: widget.passwordController,
            isPassword: true,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                      shape: const CircleBorder(),
                      activeColor: primaryColor,
                      value: _isRememberChecked,
                      onChanged: (value) {
                        setState(() {
                          _isRememberChecked = value!;
                        });
                      },
                    ),
                    Text(
                      AppLocalizations.of(context)?.rememberMe ?? "Remember me",
                      style: const TextStyle(fontSize: smallFontSize),
                    ),
                  ],
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(AppLocalizations.of(context)?.forgotPassword ??
                        "forgot password ?")),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      AppLocalizations.of(context)?.newMember ?? "New Member?",
                      style: const TextStyle(fontSize: normalFontSize),
                    ),
                    InkWell(
                      onTap: () => Get.toNamed('/signup', arguments: 0),
                      child: Text(
                        AppLocalizations.of(context)?.signup.toUpperCase() ??
                            "SIGN UP",
                        style: const TextStyle(
                          fontSize: normalFontSize,
                          color: primaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor: primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
                GradientButtonWidget(
                  text: AppLocalizations.of(context)?.login.toUpperCase() ??
                      "LOGIN",
                  onTap: () => Get.offAllNamed(
                    '/home',
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context)?.getStartedNow.toUpperCase() ??
                    "Get Start Now",
                style: const TextStyle(
                  fontSize: normalFontSize,
                  color: blackColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 7),
              const Icon(Icons.arrow_forward)
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
