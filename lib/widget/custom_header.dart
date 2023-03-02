import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constant.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
    required this.leading,
    required this.action,
    required this.title,
  });
  final String leading;
  final String action;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$leading',
          style: GoogleFonts.poppins(
              fontSize: 18.sp, color: Constant.seconderyColor),
        ),
        Text(
          '$title',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
        Text(
          '$action',
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
              color: Constant.seconderyColor),
        ),
      ],
    );
  }
}
