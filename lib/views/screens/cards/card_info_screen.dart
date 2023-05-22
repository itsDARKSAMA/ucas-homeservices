import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeservices/views/widgets/custom_gradient_appbar_widget.dart';
import 'package:homeservices/views/widgets/custom_phone_texfield_widget.dart';
import 'package:homeservices/views/widgets/custom_textfield_widget.dart';
import 'package:homeservices/views/widgets/large_button_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CardInfoScreen extends StatelessWidget {
  CardInfoScreen({super.key});
  final TextEditingController _detailsController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomGradientAppBar(
        pageTtile: AppLocalizations.of(context)?.location ?? "Location",
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(image: AssetImage("assets/images/map.png")),
            const SizedBox(height: 25),
            CustomTextField(
              isLarge: true,
              controller: _detailsController,
              textHint:
                  AppLocalizations.of(context)?.moreDetailsAboutLocation ??
                      "More Details About location …",
            ),
            const SizedBox(height: 25),
            CustomPhoneTextField(controller: _mobileController),
            const Spacer(),
            LargeButton(
              text: AppLocalizations.of(context)?.addOrder.toUpperCase() ??
                  "ADD ORDER",
              onTap: () => Get.offAllNamed('/card-info-field'),
            ),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
