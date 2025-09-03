import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuantitySelector extends StatefulWidget {
  const QuantitySelector({super.key});

  @override
  State<QuantitySelector> createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  int quantity=1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          onTap: (){
            setState(() {
              if (quantity >1 ){
                quantity --;
              }
            });
          },
          child: Container(
            width: 24.w,
              height: 24.h,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey.shade400,width: 1.w)
              ),
              child:  Icon(Icons.remove)
          ),
        ),
        SizedBox(width: 15.w,),
        Text(
          "$quantity",
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 15.w,),
        InkWell(
          onTap: (){
            setState(() {
                quantity ++;
            });
          },
          child: Container(
              width: 24.w,
              height: 24.h,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey.shade400,width: 1.w)
              ),
              child:  Icon(Icons.add)
          ),
        ),

      ],
    );
  }
}

