import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khuloset_beta/src/components/image_data.dart';
import 'package:khuloset_beta/src/controller/bottom_nav_controller.dart';

class App extends GetView<BottomNavController> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: ImageData(path: ,),
        ),
        body: IndexedStack(
          index: controller.pageIndex.value,
          children: [
            Container(
              child: Center(child: Text('HOME')),
            ),
            Container(
              child: Center(child: Text('SEARCH')),
            ),
            Container(
              child: Center(child: Text('UPLOAD')),
            ),
            Container(
              child: Center(child: Text('ACTIVITY')),
            ),
            Container(
              child: Center(child: Text('MYPAGE')),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: controller.pageIndex.value,
          onTap: controller.changeBottomNav,
          items: [
            BottomNavigationBarItem(
                icon: ImageData(path: IconsPath.homeOff),
                activeIcon: ImageData(path: IconsPath.homeOn),
                label: 'home'),
            BottomNavigationBarItem(
                icon: ImageData(path: IconsPath.searchOff),
                activeIcon: ImageData(path: IconsPath.searchOn),
                label: 'home'),
            BottomNavigationBarItem(
                icon: ImageData(path: IconsPath.uploadIcon),
                activeIcon: ImageData(path: IconsPath.uploadIcon),
                label: 'home'),
            BottomNavigationBarItem(
                icon: ImageData(path: IconsPath.activeOff),
                activeIcon: ImageData(path: IconsPath.activeOn),
                label: 'home'),
            BottomNavigationBarItem(
              icon: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
              ),
              label: 'home',
            ),
          ],
        ),
      ),
    );
  }
}
