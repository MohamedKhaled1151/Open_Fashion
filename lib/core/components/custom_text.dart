

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight weight;
  final Color color;
  final int max;
  const CustomText({super.key,
    required this.text,
     this.size=16,
     this.weight= FontWeight.normal,
     this.color= Colors.white,
     this.max=1,

  });

  @override
  Widget build(BuildContext context) {
    return  Text(text,
      maxLines: max,
      style: TextStyle(
          fontWeight: weight,
          fontSize: size.sp,
          fontFamily: "TenorSans",
          color: color
      ),);

  }
}
