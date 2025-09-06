import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/core/components/colors/colors.dart';
import 'package:open_fashion/core/components/custom_text.dart';

class CheckoutSummarySection extends StatefulWidget {
  const CheckoutSummarySection({super.key, required this.price});
  final int price;

  @override
  State<CheckoutSummarySection> createState() => _CheckoutSummarySectionState();
}

class _CheckoutSummarySectionState extends State<CheckoutSummarySection> {
  @override
  Widget build(BuildContext context) {
    return

       SingleChildScrollView(
         child: Padding(
           padding:  EdgeInsets.symmetric(horizontal: 15.w),
           child: Column(
            children: [
              Divider(
                endIndent: 16,
                indent: 16,
              ),
              SizedBox(height: 16.h,),
             IconTextRow(svg: "assets/icons/Vector.svg", text: "Add promo code"),
              SizedBox(height: 16.h,),
              Divider(
                endIndent: 16,
                indent: 16,
              ),
              SizedBox(height: 16.h,),
              IconTextRow(svg: "assets/icons/dilv.svg",width: 18.4, height: 23.04, text: "Delivery                   FREE"),
              SizedBox(height: 16.h,),
              Divider(
                endIndent: 16,
                indent: 16,
              ),
              Gap(230),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   CustomText(text: "Est. Total",color: AppColors.primary,weight: FontWeight.bold,),
                  CustomText(text: "\$  ${widget.price}",color: AppColors.priceColor,weight: FontWeight.bold,),
         
                ],
              )
         
            ],
         
               ),
         ),
       ) ;
  }
}

class IconTextRow extends StatelessWidget {
  const IconTextRow({super.key, required this.svg, required this.text, this.width=24,  this.height=14.5});
  final String svg;
  final String text;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 21.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(svg,width: width.w, height: height.h),
          SizedBox(width: 13.w,),
          Expanded(child: CustomText(text: text,color: AppColors.primary,)),

        ],
      ),
    );
  }
}
