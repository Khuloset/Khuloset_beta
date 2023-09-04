import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageData extends StatelessWidget {
  final String path;
  final double? width;

  const ImageData({
    super.key,
    required this.path,
    this.width = 70, //기본값은 항상 70
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      width: width! / Get.mediaQuery.devicePixelRatio,
    );
  }
}

class IconsPath {
  static String get homeOff => 'assets/images/bottom_nav_home_off_icon.jpg';
  static String get homeOn => 'assets/images/bottom_nav_home_on_icon.jpg';
  static String get searchOff => 'assets/images/bottom_nav_search_off_icon.jpg';
  static String get searchOn => 'assets/images/bottom_nav_search_on_icon.jpg';
  static String get uploadIcon => 'assets/images/bottom_nav_upload_icon.jpg';
  static String get activeOff => 'assets/images/bottom_nav_active_off_icon.jpg';
  static String get activeOn => 'assets/images/bottom_nav_active_on_icon.jpg';

  static String get logo => 'assets/images/logo.jpg';
  static String get dm => 'assets/images/reply_icon.jpg';
}
