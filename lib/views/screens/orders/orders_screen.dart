import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeservices/constants.dart';
import 'package:homeservices/controllers/orders_contoller.dart';
import 'package:homeservices/views/screens/orders/completed_orders_screen.dart';
import 'package:homeservices/views/screens/orders/pending_orders_screen.dart';
import 'package:homeservices/views/screens/orders/underway_orders_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OrdersScreen extends StatelessWidget {
  OrdersScreen({super.key});
  final OrdersController _contoller = Get.put(OrdersController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context)?.itemDetails ?? "Item Details",
          style: const TextStyle(
            color: whiteColor,
            fontSize: meduimFontSize,
            fontWeight: FontWeight.w600,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: primaryGradient),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: offWhiteColor,
        child: Column(
          children: [
            Column(
              children: [
                TabBar(
                  labelColor: primaryColor,
                  unselectedLabelColor: greyColor,
                  tabs: [
                    Tab(
                        text:
                            AppLocalizations.of(context)?.pending ?? 'Pending'),
                    Tab(
                        text: AppLocalizations.of(context)?.underway ??
                            'Underway'),
                    Tab(
                        text: AppLocalizations.of(context)?.completed ??
                            'Completed'),
                  ],
                  controller: _contoller.tabController,
                  // indicatorSize: TabBarIndicatorSize.tab,
                ),
              ],
            ),
            Expanded(
              flex: 3,
              child: TabBarView(
                controller: _contoller.tabController,
                children: const [
                  PendingOrdersScreen(),
                  UnderwayOrdersScreen(),
                  CompletedOrdersScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
