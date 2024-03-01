import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor_app/common/custom_appbar.dart';
import 'package:multi_vendor_app/common/custom_container.dart';
import 'package:multi_vendor_app/constants/constants.dart';
import 'package:multi_vendor_app/views/home/widget/category_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.h),
        child: SizedBox(
          height: 100.h,
          child: const CustomAppBar(),
        ),
      ),
      body: SafeArea(
        child: CustomContainer(
          containerContent: const CategoryList(),
        ),
      ),
    );
  }
}
