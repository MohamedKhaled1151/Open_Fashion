import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/core/components/colors/colors.dart';
import 'package:open_fashion/core/components/custom_text.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.title});
  final String title ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(33.h),
        Center(
          child: CustomText(
            weight:FontWeight.w400,
            color: AppColors.primary,
            size: 18.sp,
            spacing: 4.sp ,
            text:
          title.toUpperCase()),
        ),
        Gap(10.h),
        Image.asset("assets/images/12.png",width: 124.w,color: AppColors.primary,),

      ],
    );
  }
}
