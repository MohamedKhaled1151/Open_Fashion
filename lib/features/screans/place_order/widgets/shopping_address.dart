

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_fashion/core/components/colors/colors.dart';
import 'package:open_fashion/core/components/custom_text.dart';

class ShoppingAddress extends StatelessWidget {
  const ShoppingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 10.h,),
            CustomText(text: "Iris Watson",color:AppColors.primary,size: 14.sp,),
            SizedBox(height: 7.h,),
            CustomText(text: "606-3727 Ullamcorper",color: Color(0xff888888),size: 14.sp,),
            SizedBox(height: 7.h,),
            CustomText(text: "StreetRoseville NH 11523",color: Color(0xff888888),size: 14.sp,),
            SizedBox(height: 7.h,),
            CustomText(text: "(786) 713-8616",color: Color(0xff888888),size: 14.sp,)

          ],
        ),
        Icon(Icons.arrow_forward_ios,color: Color(0xff333333),)
      ],
    );
  }
}
class Add extends StatelessWidget {
  const Add({super.key, required this.title, required this.icon});
  final String title;
  final Icon icon;


  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(44.r),
            side: BorderSide(color:Color(0xffF9F9F9)),

    ),
     child: ListTile(
       title:  Text(title,style: TextStyle(
         color: Color(0xff555555)
       ),),
       trailing:  icon,
     ),
    );
  }
}

