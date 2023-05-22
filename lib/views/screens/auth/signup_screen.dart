import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeservices/constants.dart';
import 'package:homeservices/views/screens/auth/customer/customer_signup_screen.dart';
import 'package:homeservices/views/screens/auth/provider/provider_signup_screen.dart';
import 'package:homeservices/views/widgets/custom_back_button_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignUpScreen extends StatefulWidget {
  // final int selectedPage;
  const SignUpScreen({
    super.key,
    // required this.selectedPage,
  });

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      initialIndex: Get.arguments,
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: primaryGradient,
      ),
      child: Scaffold(
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
                const Align(
                  alignment: Alignment.centerLeft,
                  child: CustomBackButton(),
                ),
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
                          controller: _tabController,
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
                            controller: _tabController,
                            children: [
                              ProviderSignUpScreen(),
                              CustomerSignUpScreen(),
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
      ),
    );
  }
}
