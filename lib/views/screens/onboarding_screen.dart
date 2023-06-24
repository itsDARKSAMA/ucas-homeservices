import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:get/get.dart';
import 'package:homeservices/constants.dart';
import 'package:homeservices/views/widgets/large_gradient_button_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OnboardingScreen extends StatelessWidget {
  final PageController _pageController = PageController();
  OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoard(
        pageController: _pageController,
        skipButton: TextButton(
          onPressed: () {
            Get.offAllNamed("/login");
          },
          child: Text(AppLocalizations.of(context)?.skip ?? "Skip"),
        ),
        onDone: () {
          Get.offAllNamed("/login");
        },
        onBoardData: onBoardData(context),
        titleStyles: const TextStyle(
          color: primaryColor,
          fontSize: meduimFontSize,
          fontWeight: FontWeight.w600,
        ),
        pageIndicatorStyle: const PageIndicatorStyle(
          width: 0,
          inactiveSize: Size.zero,
          activeSize: Size.zero,
        ),
        nextButton: OnBoardConsumer(
          builder: (context, ref, child) {
            final state = ref.watch(onBoardStateProvider);
            return LargeGradientButtonWidget(
              text: state.isLastPage
                  ? AppLocalizations.of(context)?.done ?? "DONE"
                  : AppLocalizations.of(context)?.next ?? "NEXT",
              onTap: () => _onNextTap(state, context),
            );
          },
        ),
      ),
    );
  }

  void _onNextTap(OnBoardState onBoardState, BuildContext context) {
    if (!onBoardState.isLastPage) {
      _pageController.animateToPage(
        onBoardState.page + 1,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOutSine,
      );
    } else {
      Get.offAllNamed("/login");
    }
  }
}

List<OnBoardModel> onBoardData(BuildContext context) => [
      OnBoardModel(
        title: AppLocalizations.of(context)
                ?.fastReservationWithTechniciansAndCraftsmen ??
            "Fast reservation with technicians and craftsmen",
        description: "",
        imgUrl: "assets/images/onboarding-1.png",
      ),
      OnBoardModel(
        title: AppLocalizations.of(context)
                ?.fastReservationWithTechniciansAndCraftsmen ??
            "Fast reservation with technicians and craftsmen",
        description: "",
        imgUrl: "assets/images/onboarding-2.png",
      ),
      OnBoardModel(
        title: AppLocalizations.of(context)
                ?.fastReservationWithTechniciansAndCraftsmen ??
            "Fast reservation with technicians and craftsmen",
        description: "",
        imgUrl: "assets/images/onboarding-1.png",
      ),
    ];
