import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pal_mail_project/widget/custom_header.dart';
import 'package:pal_mail_project/widget/tag_container.dart';
import '../utils/constant.dart';

class TagScreen extends StatelessWidget {
  static const String id = 'TagScreen';

  const TagScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomHeader(title: 'Tages'),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: primaryColor.withOpacity(.1),
                      blurRadius: 6.0,
                      spreadRadius: 1.0,
                      offset: Offset(0.0, 0.0), // soften the shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40.r)),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TagContainer(
                          text: 'All Tags',
                        ),
                        TagContainer(
                          text: '#Urgent ',
                        ),
                        TagContainer(
                          text: '#Egyptian Military ',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    TagContainer(
                      text: '#New ',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
