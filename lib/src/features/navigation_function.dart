// ignore_for_file: prefer_const_constructors
import 'package:espace_num/src/views/infos/infos_views.dart';
import 'package:get/get.dart';

class NavigationBetween {
  void goIn() => Get.to(InfosPage());
  void goOut() => Get.back();
}
