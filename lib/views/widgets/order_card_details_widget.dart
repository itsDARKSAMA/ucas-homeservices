import 'package:flutter/material.dart';
import 'package:homeservices/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OrderCardDetails extends StatelessWidget {
  final String title;
  final String date;
  final String serviceType;
  const OrderCardDetails({
    super.key,
    required this.title,
    required this.date,
    required this.serviceType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      color: whiteColor,
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              title,
              style: const TextStyle(
                color: blackColor,
                fontSize: normalFontSize,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              date,
              style: const TextStyle(
                color: greyColor,
                fontSize: smallFontSize,
                fontWeight: FontWeight.w600,
              ),
            ),
          ]),
          Row(
            children: [
              Text(
                "${AppLocalizations.of(context)?.serviceType ?? "Service Type"} : ",
                style: const TextStyle(
                  color: greyColor,
                  fontSize: smallFontSize,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                serviceType,
                style: const TextStyle(
                  color: primaryColor,
                  fontSize: smallFontSize,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
