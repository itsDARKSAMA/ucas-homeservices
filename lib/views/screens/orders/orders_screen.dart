import 'package:flutter/material.dart';
import 'package:homeservices/constants.dart';
import 'package:homeservices/views/screens/orders/completed_orders_screen.dart';
import 'package:homeservices/views/screens/orders/pending_orders_screen.dart';
import 'package:homeservices/views/screens/orders/underway_orders_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
        length: 3,
        vsync: this,
        animationDuration: Duration.zero,
        initialIndex: 0);
    super.initState();
  }

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
                  controller: _tabController,
                  // indicatorSize: TabBarIndicatorSize.tab,
                ),
              ],
            ),
            Expanded(
              flex: 3,
              child: TabBarView(
                controller: _tabController,
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
