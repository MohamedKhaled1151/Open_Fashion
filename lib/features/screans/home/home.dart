
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/core/components/custom_text.dart';
import 'package:open_fashion/features/widgets/custom_app_bar.dart';
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
                 child: Padding(
                   padding:  EdgeInsets.symmetric(horizontal: 8.w),
                   child: Column(
                     children: [
                       Gap(120.h),
                       Image.asset("assets/images/image 20.png"),
                       Gap(20.h),
                       GridView.builder(
                         shrinkWrap: true,
                         physics: NeverScrollableScrollPhysics(),
                         itemCount: ProductModel.products.length,
                           gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                             crossAxisCount: 2,
                             mainAxisSpacing: 0,
                             crossAxisSpacing: 10.w,
                             childAspectRatio: 0.48,

                           ) ,
                           itemBuilder: (context,index){
                            final item=ProductModel.products[index];
                          return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(item.image),
                                Gap(10.h),
                                CustomText(text: item.name),
                                CustomText(text: item.description,color: Colors.white30,size: 10.sp,),
                                Gap(9.h),
                                CustomText(text: "\$ ${item.price.toString()}",color: Color(0xffDD8560),),

                              ],

                          );
                           }
                       ),
                       Gap(20.h),
                       CustomText(text: "You may also like".toUpperCase(),size: 20.sp,),
                       Gap(5.h),
                       Image.asset("assets/images/12.png",width: 190.w,),
                       Gap(300.h),
                     ],
                   ),
                 ),
               ),
          ],
        ),
    );
  }
}
