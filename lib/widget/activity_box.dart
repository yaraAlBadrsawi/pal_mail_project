import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constant.dart';

class ActivityBox extends StatelessWidget {
  final String name, details, image, date;
  ActivityBox({
    required this.name,
    required this.details,
    required this.image,
    required this.date,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: inboxDecoration,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: 9.w,
                  ),
                  child: CircleAvatar(
                    radius: 12.r,
                    backgroundImage: AssetImage(image),
                  ),
                ),
                Text(
                  name,
                  style: GoogleFonts.poppins(
                      fontSize: 18.0.sp, fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Text(
                  date,
                  style: GoogleFonts.poppins(
                      fontSize: 12.0.sp, color: subTitleColor),
                ),
                SizedBox(
                  width: 8.w,
                ),
                FaIcon(
                  FontAwesomeIcons.angleRight,
                  size: 12,
                  color: subTitleColor,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 37.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    details,
                    style: GoogleFonts.poppins(
                        fontSize: 14.0.sp, color: subTitleColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
