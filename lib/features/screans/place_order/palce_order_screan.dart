import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_fashion/core/components/custom_text.dart';
import 'package:open_fashion/features/screans/add_address/add_address_screan.dart';
import 'package:open_fashion/features/screans/place_order/widgets/shopping_address.dart';
import 'package:open_fashion/features/widgets/custom_app_bar.dart';
import 'package:open_fashion/features/widgets/custom_bottom_app.dart';
import 'package:open_fashion/features/widgets/header.dart';

import '../../../core/components/colors/colors.dart';

class PalceOrderScrean extends StatelessWidget {
  const PalceOrderScrean({super.key,
    required this.name,
    required this.image,
    required this.price,
    required this.descp,
    required this.total,
    required this.quantity});

  final String name ;
  final String image ;
  final int price ;
  final String descp;
  final int total ;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppBar(isBlackk: false),

      body: SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(title: "checkout"),
              SizedBox(height: 15.h,),
              CustomText(text: "Shipping address",color: Color(0xff888888),size: 14.sp,),
              SizedBox(height: 8.h,),
              ShoppingAddress(),
              SizedBox(height: 10.h,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AddAddressScrean()));
                },
                child: Add(
                  title: "Add shipping address",
                  icon: Icon(Icons.add,size: 35,),
                ),
              ),
              SizedBox(height: 36.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.w),
                child: CustomText(text: "Shipping Method",color: Color(0xff888888),),
              ),
              SizedBox(height: 12.h,),
              Add(
                title: "Pickup at store                                    FREE",
                icon: Icon(Icons.keyboard_arrow_down_rounded,size: 35,),
              ),
              SizedBox(height: 36.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.w),
                child: CustomText(text: "Payment method",color: Color(0xff888888),),
              ),
              SizedBox(height: 12.h,),
              Add(
                title: "Payment method",
                icon: Icon(Icons.keyboard_arrow_down_rounded,size: 35,),
              ),
              SizedBox(height: 80.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "   Total",color: AppColors.primary,weight: FontWeight.bold,),
                  CustomText(text: "\$  ${total}",color: AppColors.priceColor,weight: FontWeight.bold,),
        
                ],
              ),
              SizedBox(height: 15.h,),
              CustomBottomApp(title: "Place order", isSvgg: true, onTap: (){


              }),

        
        
        
            ],
        
          ),
        ),


    );
  }
}
