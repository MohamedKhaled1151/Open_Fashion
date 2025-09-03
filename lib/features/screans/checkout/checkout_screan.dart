import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_fashion/features/screans/checkout/widgets/cart_item_widget.dart';
import 'package:open_fashion/features/screans/checkout/widgets/checkout_summary_section.dart';
import 'package:open_fashion/features/widgets/custom_app_bar.dart';
import 'package:open_fashion/features/widgets/header.dart';

class CheckoutScrean extends StatefulWidget {
  const CheckoutScrean({super.key, required this.name, required this.image, required this.price, required this.descp});
 final String name ;
 final String image ;
 final String price ;
 final String descp;

  @override
  State<CheckoutScrean> createState() => _CheckoutScreanState();
}

class _CheckoutScreanState extends State<CheckoutScrean> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
         appBar: CustomAppBar(isBlackk: false),
         body:
         Column(
           children: [
             Header(title: "checkout",),
             SizedBox(height: 18.h,),
             CartItemWidget(name: widget.name, image: widget.image, descp: widget.descp, price: widget.price),
             SizedBox(height: 15.h,),
             CheckoutSummarySection()



           ],
         ),

    );
  }
}
