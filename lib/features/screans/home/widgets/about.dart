 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../core/components/custom_text.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Ionicons.logo_twitter,color: Colors.white,),
            SizedBox(width: 30.w,),
            Icon(Ionicons.logo_instagram,color: Colors.white,),
            SizedBox(width: 30.w,),
            Icon(Ionicons.logo_facebook,color: Colors.white,)


          ],
        ),
        SizedBox(height: 15.h,),
        Image.asset("assets/images/12.png",width: 190.w,),
        SizedBox(height: 15.h,),
        CustomText(
            height: 2.2,
            color: Color(0xff333333),
            max: 3,
            text:"support@openui.design \n      + 60 825 876    \n08:00 - 22:00 - Everyday"),
        SizedBox(height: 5.h,),
        Image.asset("assets/images/12.png",width: 190.w,),
        SizedBox(height: 30.h,),
        CustomText(text: "About    Contact    Blog "),



      ],
    );
  }
}
