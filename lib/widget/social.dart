import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    super.key,
    required this.imgName,
  });
  final String imgName;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image.asset(
          'images/$imgName.png',
          width: 36.w,
          height: 29.h,
        ),
      ),
      width: 54.w,
      height: 53.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffEEEEF6),
        ),
        borderRadius: BorderRadius.circular(30.r),
      ),
    );
  }
}
