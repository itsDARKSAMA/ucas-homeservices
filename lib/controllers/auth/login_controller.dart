import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void onInit() {
    super.onInit();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void onClose() {
    super.onClose();
    _tabController.dispose();
  }

  TabController get tabController => _tabController;
}
