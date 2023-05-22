import 'package:flutter/material.dart';
import 'package:homeservices/constants.dart';

class Service {
  const Service({
    required this.title,
    required this.icon,
    required this.onTap,
  });
  final String title;
  final Widget icon;
  final Function() onTap;
}

class ServiceCard extends StatelessWidget {
  const ServiceCard({super.key, required this.service});
  final Service service;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: service.onTap,
      child: Container(
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(15),
            // boxShadow: <BoxShadow>[
            //   BoxShadow(
            //     blurRadius: 5,
            //     color: blackColor.withOpacity(0.3),
            //     spreadRadius: 1,
            //     offset: const Offset(1, 2),
            //   )
            // ],
            border: Border.all(color: primaryColor),
          ),
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: service.icon),
                  Text(service.title),
                ]),
          )),
    );
  }
}
