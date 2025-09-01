import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../core/components/colors/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isBlackk;
  const CustomAppBar({super.key, required this.isBlackk});

  @override
  Widget build(BuildContext context) {
    bool isBlack=isBlackk;
    return Padding(
      padding:  EdgeInsets.all(8.0),
      child: AppBar(
        centerTitle: true,
        backgroundColor: isBlack ? AppColors.primary:Colors.white,
       leadingWidth:25.w ,
       leading: SvgPicture.asset("assets/icons/Menu.svg",color:isBlack?Color(0xffF9F9F9):Colors.black,),
        title: SvgPicture.asset("assets/logos/Logo.svg",color:isBlack? Color(0xffFFFFFF):Colors.black,),
        actions: [
          SvgPicture.asset("assets/icons/Search.svg",color:isBlack? Color(0xffF9F9F9):Colors.black,
            height:24.h,
            width: 24.w,
          ),
          Gap(20.w),
          SvgPicture.asset("assets/icons/shopping bag.svg",color:isBlack? Color(0xffF9F9F9):Colors.black,
           height: 24.h,
            width: 24.w,
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}
