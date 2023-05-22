import 'package:flutter/material.dart';
import 'package:homeservices/views/widgets/order_card_details_widget.dart';

class CompletedOrdersScreen extends StatelessWidget {
  const CompletedOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => const SizedBox(height: 2.5),
        separatorBuilder: (context, index) => OrderCardDetails(
            title: "Order #${index + 1440}",
            date: "28 Nov 2019",
            serviceType: "Carpenter"),
        itemCount: 5);
  }
}
