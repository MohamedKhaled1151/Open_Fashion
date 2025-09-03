
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:ionicons/ionicons.dart';
import 'package:open_fashion/core/components/custom_text.dart';
import 'package:open_fashion/features/screans/home/widgets/about.dart';
import 'package:open_fashion/features/screans/home/widgets/gridview.dart';
import 'package:open_fashion/features/screans/home/widgets/listviewproducts.dart';
import 'package:open_fashion/features/widgets/custom_app_bar.dart';
import 'package:open_fashion/models/caver_model.dart';
import 'package:open_fashion/models/product_model.dart';

import '../../../core/components/colors/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();

}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
        appBar: CustomAppBar(
          isBlackk: true,
        ),
      body: Stack(
          children: [
            // text
            Positioned(
              top: 10.h,
              left: 0,
              right: 0,
              child: SvgPicture.asset("assets/texts/10.svg")),
            Positioned(
              top: 40.h,
             left: 0,
             right: 0,
             child: SvgPicture.asset("assets/texts/October.svg")),
            Positioned(
                top: 85.h,
                left: 0,
                right: 0,
                child: SvgPicture.asset("assets/texts/Collection.svg")),


               SingleChildScrollView(
                 child: Column(
                   children: [
                     Padding(
                       padding:  EdgeInsets.symmetric(horizontal: 8.w),
                       child: Column(
                         children: [
                           Gap(120.h),
                           Image.asset("assets/images/image 20.png"),
                           Gap(20.h),
                           GridViewProduct(),
                           Gap(5.h),
                           CustomText(text: "You may also like".toUpperCase(),size: 20.sp,),
                           Gap(5.h),
                           Image.asset("assets/images/12.png",width: 190.w,),
                           Gap(10.h),
                           Listviewproducts(),
                           About(),






                           Gap(20.h),
                         ],
                       ),
                     ),
                     Container(
                       width: double.infinity,
                       decoration: BoxDecoration(
                         color: Color(0xffC4C4C4),
                       ),
                       child: CustomText(
                         color: Color(0xff333333),
                           max:2,
                           height:1.5.h,
                           text: "    Copyright© OpenUI All Rights Reserved."),
                     )
                   ],
                 ),
               ),
          ],
        ),
    );
  }
}
