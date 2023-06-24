import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeservices/constants.dart';
import 'package:homeservices/controllers/auth/login_controller.dart';
import 'package:homeservices/views/screens/auth/customer/customer_login_screen.dart';
import 'package:homeservices/views/screens/auth/provider/provider_login_screen.dart';
import 'package:homeservices/views/widgets/app_logo_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final LoginController _controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: primaryGradient,
        ),
        child: SafeArea(
          child: Column(
            children: [
              const AppLogo(),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                  ),
                  child: Column(
                    children: [
                      TabBar(
                        controller: _controller.tabController,
                        tabs: [
                          Tab(
                              text: AppLocalizations.of(context)
                                      ?.serviceProvider ??
                                  'Service Provider'),
                          Tab(
                              text: AppLocalizations.of(context)?.customer ??
                                  'Customer'),
                        ],
                        labelColor: primaryColor,
                        unselectedLabelColor: greyColor,
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _controller.tabController,
                          children: [
                            ProviderLoginScreen(),
                            CustomerLoginScreen(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
