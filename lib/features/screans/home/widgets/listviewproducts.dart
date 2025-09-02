import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/components/custom_text.dart';
import '../../../../models/caver_model.dart';

class Listviewproducts extends StatelessWidget {
  const Listviewproducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: CaverModel.cavers.length,
          itemBuilder: (context,index){
            final item =CaverModel.cavers[index];
            return Padding(
              padding:  EdgeInsets.all(8.0.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(item.image, height: 400.h,fit: BoxFit.cover ,),
                  Gap(10.h),
                  CustomText(text: item.name.toString()),

                ],
              ),
            );
          }),
    );
  }
}
