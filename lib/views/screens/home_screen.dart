import 'package:flutter/material.dart';
import 'package:homeservices/constants.dart';
import 'package:homeservices/views/screens/orders/orders_screen.dart';
import 'package:homeservices/views/screens/profile/more_options_screen.dart';
import 'package:homeservices/views/screens/profile/profile_screen.dart';
import 'package:homeservices/views/screens/services_screen.dart';
import 'package:homeservices/views/widgets/app_logo_widget.dart';
import 'package:homeservices/views/widgets/custom_icons_widget.dart';
import 'package:homeservices/views/widgets/top_indicator_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(
        length: 4,
        vsync: this,
        animationDuration: Duration.zero,
        initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: secondaryColor,
        child: TabBar(
          unselectedLabelColor: whiteColor,
          labelColor: whiteColor,
          labelStyle: const TextStyle(fontSize: smallFontSize),
          controller: _tabController,
          indicator: TopIndicator(),
          indicatorSize: TabBarIndicatorSize.tab,
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
        controller: _tabController,
        children: [
          const ServicesScreen(),
          const OrdersScreen(),
          ProfileScreen(),
          const MoreOptionsScreen(),
        ],
      ),
    );
  }
}
