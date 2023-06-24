import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrdersController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void onInit() {
    super.onInit();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void onClose() {
    super.onClose();
    _tabController.dispose();
  }

  TabController get tabController => _tabController;
}
