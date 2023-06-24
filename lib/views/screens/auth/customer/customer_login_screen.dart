import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeservices/constants.dart';
import 'package:homeservices/controllers/auth/customer_login_controller.dart';
import 'package:homeservices/views/widgets/custom_textfield_widget.dart';
import 'package:homeservices/views/widgets/gradient_button_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomerLoginScreen extends StatelessWidget {
  final CustomerLoginController _controller =
      Get.put(CustomerLoginController());

  CustomerLoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          const SizedBox(height: 50),
          // CustomPhoneTextField(controller: _controller.phoneController),
          CustomTextField(
            textHint: AppLocalizations.of(context)?.email ?? 'Email',
            controller: _controller.emailController,
          ),
          const SizedBox(height: 30),
          CustomTextField(
            textHint: AppLocalizations.of(context)?.password ?? 'Password',
            controller: _controller.passwordController,
            isPassword: true,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GetBuilder(
                    init: CustomerLoginController(),
                    builder: (controller) {
                      return InkWell(
                        onTap: () => _controller.toggleRemember(),
                        child: Row(
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Checkbox(
                              shape: const CircleBorder(),
                              activeColor: primaryColor,
                              value: _controller.isRememberChecked,
                              onChanged: (_) => _controller.toggleRemember(),
                            ),
                            Text(
                              AppLocalizations.of(context)?.rememberMe ??
                                  "Remember me",
                              style: const TextStyle(fontSize: smallFontSize),
                            ),
                          ],
                        ),
                      );
                    }),
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
                      onTap: () => Get.toNamed('/signup', arguments: 1),
                      child: Text(
                        AppLocalizations.of(context)?.signup ?? "SIGN UP",
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
                    onTap: () => _controller.loginWithEmail()),
              ],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context)?.getStartedNow ?? "Get Start Now",
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
