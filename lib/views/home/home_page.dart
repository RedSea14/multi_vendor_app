import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_app/common/custom_appbar.dart';
import 'package:multi_vendor_app/common/custom_container.dart';
import 'package:multi_vendor_app/common/heading.dart';
import 'package:multi_vendor_app/constants/constants.dart';
import 'package:multi_vendor_app/views/home/all_fastest_foods_page.dart';
import 'package:multi_vendor_app/views/home/all_nearby_restaurants.dart';
import 'package:multi_vendor_app/views/home/recommendations_page.dart';
import 'package:multi_vendor_app/views/home/widgets/category_list.dart';
import 'package:get/get.dart';
import 'package:multi_vendor_app/constants/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h), child: const CustomAppBar()),
      body: SafeArea(
        child: CustomContainer(
            containerContent: Column(
          children: [
            const CategoryList(),
            Heading(
              text: "Nearby Restaurants",
              onTap: () {
                Get.to(() => const AllNearbyRestaurants(),
                    transition: Transition.cupertino,
                    duration: const Duration(milliseconds: 900));
              },
            ),
            Heading(
              text: "Try Something New",
              onTap: () {
                Get.to(() => const RecommendationsPage(),
                    transition: Transition.cupertino,
                    duration: const Duration(milliseconds: 900));
              },
            ),
            Heading(
              text: "Food closer to you",
              onTap: () {
                Get.to(() => const AllFastestFoods(),
                    transition: Transition.cupertino,
                    duration: const Duration(milliseconds: 900));
              },
            ),
          ],
        )),
      ),
    );
  }
}
