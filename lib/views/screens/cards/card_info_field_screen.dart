import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeservices/constants.dart';
import 'package:homeservices/views/widgets/large_gradient_button_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CardInfoFieldScreen extends StatelessWidget {
  const CardInfoFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 30),
                    child: InkWell(
                        onTap: () => Get.offAllNamed('/home'),
                        child: const Icon(Icons.close)),
                  ),
                  const Image(
                      image: AssetImage("assets/images/illustration.png")),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppLocalizations.of(context)?.orderDone1 ?? "ORDER ",
                        style: const TextStyle(
                            fontSize: largeFontSize,
                            textBaseline: TextBaseline.ideographic,
                            fontWeight: FontWeight.w800,
                            color: blackColor),
                      ),
                      Text(
                        AppLocalizations.of(context)?.orderDone2 ?? "Done",
                        style: const TextStyle(
                            fontSize: largeFontSize,
                            fontWeight: FontWeight.w800,
                            textBaseline: TextBaseline.ideographic,
                            color: primaryColor),
                      ),
                      const Text(
                        "!",
                        style: TextStyle(
                            fontSize: largeFontSize,
                            fontWeight: FontWeight.w800,
                            color: orangeColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 50,
                    child: Text(
                      AppLocalizations.of(context)?.theOrderHasBeenSent ??
                          "The ORDER has been sent. A technician will contact you",
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: const TextStyle(
                          fontSize: normalFontSize, color: blackColor),
                    ),
                  ),
                  const SizedBox(height: 15),
                  LargeGradientButtonWidget(
                    text:
                        AppLocalizations.of(context)?.goToHome.toUpperCase() ??
                            "GO TO HOME",
                    onTap: () => Get.offAllNamed('/home'),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
