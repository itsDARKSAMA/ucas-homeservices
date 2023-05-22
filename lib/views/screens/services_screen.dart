import 'package:flutter/material.dart';
import 'package:homeservices/constants.dart';
import 'package:homeservices/views/widgets/app_logo_widget.dart';
import 'package:homeservices/views/widgets/custom_appbar_shape_widget.dart';
import 'package:homeservices/views/widgets/custom_icons_widget.dart';
import 'package:homeservices/views/widgets/service_card_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(null),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: InkWell(
                onTap: () {},
                child: const CustomIcons(
                  height: 30,
                  icon: CustomAppIcons.bell,
                )),
          )
        ],
        title: const SizedBox(height: 50, child: AppLogo()),
        toolbarHeight: 100,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: primaryGradient,
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                ClipPath(
                  clipper: CustomAppBarShape(),
                  child: Container(
                    width: double.infinity,
                    height: 170,
                    decoration: BoxDecoration(
                      gradient: primaryGradient,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 50,
                  height: 90,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: blackColor.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
            Text(
              AppLocalizations.of(context)?.selectService ?? "Select Service",
              style: const TextStyle(
                color: primaryColor,
                fontSize: normalFontSize,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 15.0,
                  mainAxisSpacing: 15.0,
                  children: List.generate(services(context).length, (index) {
                    return Center(
                      child: ServiceCard(
                        service: services(context)[index],
                      ),
                    );
                  })),
            )),
          ],
        ),
      ),
    );
  }
}
