import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/core/components/colors/colors.dart';
import 'package:open_fashion/core/components/custom_text.dart';

class CustomBottomApp extends StatelessWidget {
  const CustomBottomApp({super.key, required this.title, required this.isSvgg,  required this.onTap});
  final String title;
  final bool isSvgg;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    bool isSvg=isSvgg;
    return InkWell(
      onTap:onTap ,
      child: Container(
        width: double.infinity,
         padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 12.h),
         decoration: BoxDecoration(
           color: AppColors.primary,

         ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isSvg? SvgPicture.asset("assets/icons/shopping bag.svg",width: 18.w,):
              SizedBox.shrink(),
              SizedBox(width: 12.w,),
              CustomText(text:title.toUpperCase(),size: 18.sp,)
            ],
          ),
        ),
      ),
    );
  }
}
