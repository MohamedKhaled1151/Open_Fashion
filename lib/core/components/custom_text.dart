

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight weight;
  final Color color;
  final int max;
  final double  height ;
  final  double spacing;

  const CustomText({super.key,
    required this.text,
     this.size=16,
     this.weight= FontWeight.normal,
     this.color= Colors.white,
     this.max=1,
    this.height =1,
    this.spacing=1,

  });

  @override
  Widget build(BuildContext context) {
    return  Text(text,
      maxLines: max,
      style: TextStyle(
        height: height ,
          fontWeight: weight,
          fontSize: size.sp,
          fontFamily: "TenorSans",
          color: color,
          letterSpacing: spacing,
          overflow: TextOverflow.ellipsis,
      ),);

  }
}
