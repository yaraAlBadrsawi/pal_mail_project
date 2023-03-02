import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constant.dart';
import '../widget/custom_text_filed.dart';
import '../widget/social.dart';
import 'home.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);
  static const id = 'SignUp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 0.h),
        child: Column(
          children: [
            SizedBox(
              height: 25.h,
            ),
            CustomTextFiled(
              hintText: 'Enter email or username',
            ),
            SizedBox(
              height: 25.h,
            ),
            CustomTextFiled(
              hintText: 'Password',
              obsecure: true,
            ),
            SizedBox(
              height: 25.h,
            ),
            CustomTextFiled(
              hintText: 'Confirm password',
              obsecure: true,
            ),
            SizedBox(
              height: 50.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, HomeScreen.id);
              },
              child: Container(
                width: double.infinity,
                height: 48.h,
                child: Center(
                    child: Text(
                  'SIGN UP',
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    color: Colors.white,
                  ),
                )),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    gradient:
                        LinearGradient(begin: Alignment.bottomLeft, colors: [
                      primaryColor,
                      Color(0xff6589FF),
                    ])),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Center(
              child: Text(
                'OR',
                style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  color: Color(0xffA8A7A7),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SocialMediaButton(
                  imgName: 'face',
                ),
                SocialMediaButton(
                  imgName: 'twitter',
                ),
                SocialMediaButton(
                  imgName: 'google',
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
