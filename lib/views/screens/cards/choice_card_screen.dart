import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeservices/constants.dart';
import 'package:homeservices/views/widgets/custom_gradient_appbar_widget.dart';
import 'package:homeservices/views/widgets/custom_textfield_widget.dart';
import 'package:homeservices/views/widgets/large_button_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ChoiceCardScreen extends StatelessWidget {
  ChoiceCardScreen({super.key});
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomGradientAppBar(
        pageTtile: AppLocalizations.of(context)?.cardTitle ?? "Card Title",
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {},
                  child: DottedBorder(
                    color: primaryColor,
                    dashPattern: const [10, 3],
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      width: MediaQuery.of(context).size.width - 50,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.photo_camera_back_outlined,
                            size: 27,
                            color: lightGreyColor,
                          ),
                          Text(
                            AppLocalizations.of(context)?.imageProblem ??
                                "Image Problem",
                            style: const TextStyle(
                              fontSize: normalFontSize,
                              color: blackColor,
                            ),
                          ),
                          const SizedBox(width: 37),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  AppLocalizations.of(context)
                          ?.imageMustBeNoMoreThan2MbMax5Image ??
                      "image must be no more than 2 MB Max 5 Image",
                  style: const TextStyle(
                      fontSize: smallFontSize, color: lightGreyColor),
                )
              ],
            ),
            const SizedBox(height: 40),
            CustomTextField(
              isLarge: true,
              controller: _controller,
              textHint: AppLocalizations.of(context)?.moreDetailsAboutProblem ??
                  "More Details About Problem …",
            ),
            const Spacer(),
            LargeButton(
                text:
                    AppLocalizations.of(context)?.next.toUpperCase() ?? "NEXT",
                onTap: () => Get.toNamed('/card-info')),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
