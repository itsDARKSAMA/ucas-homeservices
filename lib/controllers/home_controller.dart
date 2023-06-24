import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeContoller extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final TabController _tabController;

  TabController get tabController => _tabController;

  @override
  void onInit() {
    super.onInit();
    _tabController = TabController(
        length: 4,
        vsync: this,
        animationDuration: Duration.zero,
        initialIndex: 0);
  }
}
