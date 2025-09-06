import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/features/screans/checkout/widgets/cart_item_widget.dart';
import 'package:open_fashion/features/screans/checkout/widgets/checkout_summary_section.dart';
import 'package:open_fashion/features/screans/place_order/palce_order_screan.dart';
import 'package:open_fashion/features/widgets/custom_app_bar.dart';
import 'package:open_fashion/features/widgets/custom_bottom_app.dart';
import 'package:open_fashion/features/widgets/header.dart';

class CheckoutScrean extends StatefulWidget {
  const CheckoutScrean({super.key, required this.name, required this.image, required this.price, required this.descp});
 final String name ;
 final String image ;
 final int price ;
 final String descp;

  @override
  State<CheckoutScrean> createState() => _CheckoutScreanState();
}

class _CheckoutScreanState extends State<CheckoutScrean> {
   int selectedQuantity=1;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
         appBar: CustomAppBar(isBlackk: false),
         body:
         SingleChildScrollView(
           child: Column(
             children: [
               Header(title: "checkout",),
               SizedBox(height: 18.h,),
               CartItemWidget(name: widget.name, image: widget.image, descp: widget.descp, price: widget.price,
                onChanged:(v){
                    setState(() {
                      selectedQuantity=v;
                    });
                    }
               ),
               SizedBox(height: 15.h,),
               CheckoutSummarySection(
                 price:widget.price*selectedQuantity ,
               ),
               SizedBox(height: 10.h,),
               CustomBottomApp(
                 title: "checkout",
                 isSvgg: true,
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>PalceOrderScrean(
                     name: widget.name,
                     image: widget.image,
                     price: widget.price,
                     descp: widget.descp,
                     quantity: selectedQuantity,
                     total: widget.price*selectedQuantity,



                   )));
                 },
               ),
           
              Gap(20),
           
             ],
           
           ),
         ),

    );
  }
}
