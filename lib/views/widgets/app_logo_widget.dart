import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppLogo extends StatelessWidget {
  final bool isIcon;
  const AppLogo({
    super.key,
    this.isIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: MediaQuery.of(context).size.height / 5,
      height: isIcon ? 25 : 170,
      child: SvgPicture.asset(
        'assets/images/logo.svg',
      ),
    );
  }
}
