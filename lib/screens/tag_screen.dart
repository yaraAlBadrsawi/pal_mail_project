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
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CustomHeader(title: 'Tages'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: Container(
                decoration: inboxDecoration,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
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
                      const TagContainer(
                        text: '#New ',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
