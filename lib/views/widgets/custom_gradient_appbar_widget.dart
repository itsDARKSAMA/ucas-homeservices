import 'package:flutter/material.dart';
import 'package:homeservices/constants.dart';
import 'package:homeservices/views/widgets/custom_appbar_shape_widget.dart';
import 'package:homeservices/views/widgets/custom_back_button_widget.dart';

class CustomGradientAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String pageTtile;
  final bool isBackButton;
  const CustomGradientAppBar({
    super.key,
    required this.pageTtile,
    this.isBackButton = true,
  });

  @override
  Size get preferredSize => const Size.fromHeight(150);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(null),
      toolbarHeight: 110,
      flexibleSpace: ClipPath(
        clipper: CustomAppBarShape(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          decoration: BoxDecoration(
            gradient: primaryGradient,
          ),
          child: Row(
            mainAxisAlignment: isBackButton
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            children: isBackButton
                ? [
                    const CustomBackButton(),
                    Text(
                      pageTtile,
                      style: const TextStyle(
                        color: whiteColor,
                        fontSize: meduimFontSize,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 25),
                    //   child: Icon(
                    //     Icons.notifications_outlined,
                    //     size: 26,
                    //     color: whiteColor,
                    //   ),
                    // ),
                    const SizedBox(
                      width: 65,
                    ),
                    // Spacer(),
                  ]
                : [
                    Text(
                      pageTtile,
                      style: const TextStyle(
                        color: whiteColor,
                        fontSize: meduimFontSize,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
          ),
        ),
      ),
    );
  }
}
