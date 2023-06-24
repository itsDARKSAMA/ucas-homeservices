import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeservices/constants.dart';
import 'package:homeservices/controllers/auth/provider_signup_controller.dart';
import 'package:homeservices/views/widgets/custom_phone_texfield_widget.dart';
import 'package:homeservices/views/widgets/custom_textfield_widget.dart';
import 'package:homeservices/views/widgets/gradient_button_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProviderSignUpScreen extends StatelessWidget {
  final ProviderSignupController _controller =
      Get.put(ProviderSignupController());
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          const SizedBox(height: 35),
          CustomTextField(
            textHint: AppLocalizations.of(context)?.fullname ?? 'Full Name',
            controller: _controller.nameController,
          ),
          const SizedBox(height: 10),
          CustomTextField(
            textHint: AppLocalizations.of(context)?.email ?? 'Email',
            controller: _controller.emailController,
          ),
          const SizedBox(height: 10),
          CustomPhoneTextField(controller: _controller.mobileController),
          const SizedBox(height: 10),
          CustomTextField(
            textHint: AppLocalizations.of(context)?.password ?? 'Password',
            controller: _controller.passwordController,
            isPassword: true,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GetBuilder(
                init: ProviderSignupController(),
                builder: (_) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        shape: const CircleBorder(),
                        activeColor: primaryColor,
                        value: _controller.isAccepted,
                        onChanged: (value) => _controller.toggleAccept(),
                      ),
                      Text(
                        AppLocalizations.of(context)?.iReadAndAccept ??
                            "I Read and Accept Home Service",
                        style: const TextStyle(fontSize: 10),
                      ),
                      InkWell(
                          onTap: () {},
                          child: Text(
                            AppLocalizations.of(context)
                                    ?.homeServiceTermsConditions ??
                                "Terms & Conditions",
                            style: const TextStyle(
                              fontSize: 10,
                              color: primaryColor,
                            ),
                          )),
                    ],
                  );
                }),
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
                      AppLocalizations.of(context)?.haveAccount ??
                          "Have Account?",
                      style: const TextStyle(fontSize: normalFontSize),
                    ),
                    InkWell(
                      onTap: () => Get.back(),
                      child: Text(
                        AppLocalizations.of(context)?.signin ?? "SIGN IN",
                        style: const TextStyle(
                          fontSize: normalFontSize,
                          color: primaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor: primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                GradientButtonWidget(
                    text: AppLocalizations.of(context)?.signup ?? "SIGN UP",
                    onTap: () => Get.toNamed('/login', arguments: 0)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
