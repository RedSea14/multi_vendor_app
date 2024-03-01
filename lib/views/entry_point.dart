import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:multi_vendor_app/constants/constants.dart';
import 'package:multi_vendor_app/controller/tab_index_controller.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:multi_vendor_app/views/cart/cart_page.dart';
import 'package:multi_vendor_app/views/home/home_page.dart';
import 'package:multi_vendor_app/views/profile/profile_page.dart';
import 'package:multi_vendor_app/views/search/search_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> myPages = [
    const HomePage(),
    const CartPage(),
    const SearchPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());
    return Obx(() => Scaffold(
          body: Stack(
            children: [
              myPages[controller.tabIndex],
              Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                  data: Theme.of(context).copyWith(canvasColor: kPrimary),
                  child: BottomNavigationBar(
                    elevation: 0,
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    unselectedIconTheme:
                        const IconThemeData(color: Colors.black38),
                    selectedIconTheme: const IconThemeData(color: kOffWhite),
                    currentIndex: controller.tabIndex,
                    onTap: (value) {
                      controller.setTabIndex = value;
                    },
                    items: const [
                      BottomNavigationBarItem(
                        icon: Icon(AntDesign.home),
                        label: "Home",
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(AntDesign.search1),
                        label: "Search",
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(AntDesign.shoppingcart),
                        label: "Cart",
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(AntDesign.profile),
                        label: "Profile",
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
