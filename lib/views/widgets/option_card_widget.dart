import 'package:flutter/material.dart';
import 'package:homeservices/constants.dart';

class OptionCard extends StatelessWidget {
  final bool haveContent;
  final Map<String, dynamic> map;
  const OptionCard({
    super.key,
    required this.map,
    this.haveContent = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: map['onTap'],
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        color: whiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              map['title'],
              style: const TextStyle(
                fontSize: normalFontSize,
                fontWeight: FontWeight.w600,
                color: blackColor,
              ),
            ),
            haveContent
                ? Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                    Text(
                      map['content'],
                      style: const TextStyle(
                        fontSize: normalFontSize,
                        fontWeight: FontWeight.w600,
                        color: lightGreyColor,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: lightGreyColor,
                    ),
                  ])
                : const Icon(
                    Icons.keyboard_arrow_right,
                    color: lightGreyColor,
                  ),
          ],
        ),
      ),
    );
  }
}
