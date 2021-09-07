import 'package:flutter/material.dart';
import 'package:navabar_demo/cart.dart';
import 'package:navabar_demo/controller/navController.dart';
import 'package:navabar_demo/fav.dart';
import 'package:navabar_demo/home.dart';
import 'package:navabar_demo/profile.dart';
import 'data.dart';
import 'package:get/get.dart';

class NavBar extends StatelessWidget {
  final List<Widget> pages = [
    HomePage(),
    CartPage(),
    FavPage(),
    ProfilePage(),
  ];
  final NavController controller = Get.put(NavController());
  @override
  Widget build(BuildContext context) {
    return GetX<NavController>(
      initState: (_) {
        controller.currentIndex.value = 0;
      },
      builder: (controller) {
        return Scaffold(
          body: pages[controller.currentIndex.value],
          floatingActionButton: Container(
            height: 70,
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                Data.navData.length,
                (index) => InkWell(
                  onTap: () {
                    controller.changeIndex(index);
                  },
                  child: Column(
                    children: [
                      Text(
                        Data.navData[index],
                      ),
                      const SizedBox(height: 5),
                      controller.activeIndex() == index
                          ? Container(
                              height: 4,
                              width: 20,
                              color: Colors.red,
                            )
                          : Center(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
