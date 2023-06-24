import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeservices/constants.dart';
import 'package:homeservices/controllers/home_controller.dart';
import 'package:homeservices/views/screens/orders/orders_screen.dart';
import 'package:homeservices/views/screens/profile/more_options_screen.dart';
import 'package:homeservices/views/screens/profile/profile_screen.dart';
import 'package:homeservices/views/screens/services_screen.dart';
import 'package:homeservices/views/widgets/app_logo_widget.dart';
import 'package:homeservices/views/widgets/custom_icons_widget.dart';
import 'package:homeservices/views/widgets/top_indicator_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final HomeContoller _contoller = Get.put(HomeContoller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: secondaryColor,
        child: TabBar(
          unselectedLabelColor: whiteColor,
          labelColor: whiteColor,
          labelStyle: const TextStyle(fontSize: smallFontSize),
          controller: _contoller.tabController,
          indicator: TopIndicator(),
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: primaryColor,
          tabs: [
            Tab(
                icon: const AppLogo(isIcon: true),
                text: AppLocalizations.of(context)?.service ?? 'Service'),
            Tab(
                icon: const CustomIcons(
                  height: 30,
                  icon: CustomAppIcons.orders,
                ),
                text: AppLocalizations.of(context)?.orders ?? 'Orders'),
            Tab(
                icon: const CustomIcons(
                  height: 30,
                  icon: CustomAppIcons.account,
                ),
                text: AppLocalizations.of(context)?.account ?? 'Account'),
            Tab(
                icon: const CustomIcons(
                  height: 30,
                  icon: CustomAppIcons.more,
                ),
                text: AppLocalizations.of(context)?.more ?? "More"),
          ],
        ),
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _contoller.tabController,
        children: [
          const ServicesScreen(),
          OrdersScreen(),
          ProfileScreen(),
          MoreOptionsScreen(),
        ],
      ),
    );
  }
}
