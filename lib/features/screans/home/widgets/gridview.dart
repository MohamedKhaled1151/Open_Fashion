import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/features/screans/checkout/checkout_screan.dart';

import '../../../../core/components/custom_text.dart';
import '../../../../models/product_model.dart';

class GridViewProduct extends StatelessWidget {
  const GridViewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>CheckoutScrean(
                  name: item.name,
                  image: item.image,
                  price: item.price,
                  descp: item.description)));
            },

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(item.image),
                Gap(10.h),
                CustomText(text: item.name),
                CustomText(text: item.description,color: Colors.white30,size: 10.sp,),
                Gap(9.h),
                CustomText(text: "\$ ${item.price.toString()}",color: Color(0xffDD8560),),

              ],

            ),
          );
        }
    );
  }
}
