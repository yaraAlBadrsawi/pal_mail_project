import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constant.dart';

class CustomHeader extends StatelessWidget {
  final String title;

  const CustomHeader({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Cancel',
          style: GoogleFonts.poppins(fontSize: 18.sp, color: seconderyColor),
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
        Text(
          'Done',
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
              color: seconderyColor),
        ),
      ],
    );
  }
}
