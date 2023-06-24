import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeservices/constants.dart';
import 'package:homeservices/controllers/profile/profile_controller.dart';
import 'package:homeservices/views/widgets/custom_icons_widget.dart';
import 'package:homeservices/views/widgets/option_card_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfileScreen extends StatelessWidget {
  final ProfileController _controller = Get.put(ProfileController());
  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: primaryGradient,
        ),
        child: SafeArea(
          child: GetBuilder(
              init: ProfileController(),
              builder: (controller) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                      child: CustomIcons(
                        height: 24,
                        icon: CustomAppIcons.settings,
                      ),
                    ),
                    Stack(
                      alignment: AlignmentDirectional.topCenter,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 150,
                          margin: const EdgeInsets.only(top: 40),
                          decoration: const BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: offWhiteColor,
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                              image: NetworkImage(_controller.photo == ""
                                  ? "https://st3.depositphotos.com/9998432/13335/v/600/depositphotos_133352156-stock-illustration-default-placeholder-profile-icon.jpg"
                                  : _controller.photo),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 100,
                          height: 100,
                        ),
                        Positioned(
                          top: 110,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                _controller.name,
                                style: const TextStyle(
                                    color: blackColor,
                                    fontSize: largeFontSize,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                _controller.email,
                                style: const TextStyle(
                                  color: lightGreyColor,
                                  fontSize: normalFontSize,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        color: offWhiteColor,
                        width: double.infinity,
                        child: Column(
                          children: [
                            const SizedBox(height: 10),
                            OptionCard(
                                map: _controller.options(context)[0],
                                haveContent: true),
                            OptionCard(map: _controller.options(context)[1]),
                            OptionCard(map: _controller.options(context)[2]),
                            OptionCard(map: _controller.options(context)[3]),
                            const SizedBox(height: 10),
                            Container(
                              width: double.infinity,
                              color: whiteColor,
                              height: 50,
                              child: InkWell(
                                onTap: () => _controller.logout(),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.logout,
                                      color: redColor,
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      AppLocalizations.of(context)?.signout ??
                                          'SIGN OUT',
                                      style: const TextStyle(
                                        color: primaryColor,
                                        fontSize: normalFontSize,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
