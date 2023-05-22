import 'package:flutter/material.dart';
import 'package:homeservices/views/widgets/custom_gradient_appbar_widget.dart';
import 'package:homeservices/views/widgets/option_card_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MoreOptionsScreen extends StatelessWidget {
  const MoreOptionsScreen({super.key});
  List<Map<String, dynamic>> _contentList(BuildContext context) => [
        {
          "title":
              AppLocalizations.of(context)?.changePassword ?? "Change Passowrd",
          "onTap": () {},
        },
        {
          "title": AppLocalizations.of(context)?.faq ?? "FAQ's",
          "onTap": () {},
        },
        {
          "title": AppLocalizations.of(context)?.aboutApp ?? "About App",
          "onTap": () {},
        },
        {
          "title": AppLocalizations.of(context)?.termsAndConditions ??
              "Terms & Conditions",
          "onTap": () {},
        },
        {
          "title":
              AppLocalizations.of(context)?.privacyPolicy ?? "Privacy Policy",
          "onTap": () {},
        },
        {
          "title": AppLocalizations.of(context)?.appRrate ?? "Rate App",
          "onTap": () {},
        },
        {
          "title":
              AppLocalizations.of(context)?.deleteAccount ?? "Delete Account",
          "onTap": () {},
        },
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomGradientAppBar(
        pageTtile: AppLocalizations.of(context)?.more ?? "More",
        isBackButton: false,
      ),
      body: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: _contentList(context).length,
        itemBuilder: (context, index) => OptionCard(
          map: _contentList(context)[index],
        ),
      ),
    );
  }
}
