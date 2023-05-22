import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum CustomAppIcons {
  ac,
  account,
  bell,
  bugs,
  cleans,
  lights,
  more,
  orders,
  saw,
  settings,
  settingsLarge,
  water
}

class CustomIcons extends StatelessWidget {
  // final double width;
  final double height;
  final CustomAppIcons icon;
  const CustomIcons({
    super.key,
    // required this.width,
    required this.height,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: MediaQuery.of(context).size.height / 5,
      height: height,
      child: SvgPicture.asset(
        'assets/icons/${icon.toString().split('.')[1]}.svg',
        height: height,
      ),
    );
  }
}
