import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:open_fashion/core/components/colors/colors.dart';
import 'package:open_fashion/core/components/custom_text.dart';
import 'package:open_fashion/features/screans/checkout/widgets/quantity_selector.dart';

class CartItemWidget extends StatefulWidget {
  const  CartItemWidget({super.key, required this.name, required this.image, required this.descp, required this.price, required this.onChanged, });
  final String name ,image ,descp;
  final int price;
  final Function (int) onChanged;

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return Padding(
      padding:  EdgeInsets.all(8.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(widget.image,width: 100.w,height: 134.h,fit: BoxFit.cover,),
            SizedBox(width: 10.w,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: "lamerei".toUpperCase(),size: 14.sp, spacing: 2.sp,color: AppColors.primary,),
               SizedBox(height: 6.h,),
               CustomText(text: "Recycle Boucle Knit Cardigan Pink",size: 12.sp,color: AppColors.primary,),
                SizedBox(height:12.h ,),
               QuantitySelector(
                 onChanged:widget.onChanged ,
               ),
                SizedBox(height: 20.h,),
                CustomText(text: "\$ ${widget.price}",size: 18.sp,color: AppColors.priceColor,),



              ],
            ),
          )
        ],
      ),
    );
  }
}
