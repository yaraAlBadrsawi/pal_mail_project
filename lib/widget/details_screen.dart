import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constant.dart';

class DetailsScreen extends StatefulWidget {
 static const  String id="DetailsScreen" ;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isExpanded = false;
  bool isExpanded2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(
          'Home',
          style:
              GoogleFonts.poppins(fontSize: 18, color: seconderyColor),
        ),
        leading: Icon(
          Icons.arrow_back_ios_sharp,
          size: 18.sp,
          color: seconderyColor,
        ),
        backgroundColor: backgroundColor,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: FaIcon(
              FontAwesomeIcons.ellipsis,
              size: 24.sp,
              color: seconderyColor,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
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
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            right: 9.w,
                          ),
                          child: Icon(
                            Icons.perm_identity,
                            color: Color(0xff707070),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              'Sport Ministry',
                              style: GoogleFonts.poppins(
                                  fontSize: 16.0.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Official organization',
                              style: GoogleFonts.poppins(
                                  fontSize: 14.0.sp, color: Color(0xffB2B2B2)),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Text(
                              'Today, 11:00 AM',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0.sp,
                                  color: Color(0xffB2B2B2)),
                            ),
                            Text(
                              'Arch 2022/1032',
                              style: GoogleFonts.poppins(
                                  fontSize: 12.0.sp, color: Color(0xffB2B2B2)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      thickness: .3,
                      color: subTitleColor,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 0.h),
                      child: Theme(
                        data: ThemeData()
                            .copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          initiallyExpanded: true,
                          onExpansionChanged: (bool expanding) =>
                              setState(() => this.isExpanded = expanding),
                          title: Text(
                            'Title of mail',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 20.0.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          trailing: FaIcon(
                            isExpanded
                                ? FontAwesomeIcons.angleUp
                                : FontAwesomeIcons.angleDown,
                            size: 16,
                            color: isExpanded
                                ? seconderyColor
                                : subTitleColor,
                          ),
                          children: <Widget>[
                            SizedBox(
                              height: 114.h,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Text(
                                  'Lorem Ipsum is simply dummy text of '
                                  'the printing and typesetting industry. Lorem Ipsum'
                                  ' has been the industry’s standard dummy text ever '
                                  'since the 1500s, when an unknown printer took a galley '
                                  'of type and scrambled it to make a type specimen book. '
                                  'It has survived not only five centuries, '
                                  'but also the leap into electronic typesetting,'
                                  ' remaining essentially unchanged. It was popularised'
                                  ' in the 1960s with the release of Letraset sheets containing'
                                  ' Lorem Ipsum passages, and more recently with desktop publishing '
                                  'software like Aldus PageMaker including versions of Lorem'
                                  ' Ipsum.Why do we use it?It is a long established fact that'
                                  ' a reader will be distra',
                                  overflow: TextOverflow.clip,
                                  style: GoogleFonts.poppins(
                                      fontSize: 14.0.sp,
                                      color: Color(0xff898989),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.r),
                boxShadow: [
                  BoxShadow(
                    color: primaryColor.withOpacity(.1),
                    blurRadius: 6.0,
                    spreadRadius: 1.0,
                    offset: Offset(0.0, 0.0), // soften the shadow
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '#',
                          style: GoogleFonts.poppins(
                              color: Color(0xff707070),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Text(
                          '#Urgent ',
                          style: GoogleFonts.poppins(
                              color: Color(0xff959595),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '#Egyptian Military ',
                          style: GoogleFonts.poppins(
                              color: Color(0xff959595),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 14.sp,
                          color: subTitleColor,
                        ))
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 0.h),
            child: Container(
              height: 56.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.r),
                boxShadow: [
                  BoxShadow(
                    color: primaryColor.withOpacity(.1),
                    blurRadius: 6.0,
                    spreadRadius: 1.0,
                    offset: Offset(0.0, 0.0), // soften the shadow
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.tag,
                          size: 24.sp,
                          color: Color(0xff707070),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(30.r)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Pending',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.sp,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 14.sp,
                          color: subTitleColor,
                        ))
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.r),
                boxShadow: [
                  BoxShadow(
                    color: primaryColor.withOpacity(.1),
                    blurRadius: 6.0,
                    spreadRadius: 1.0,
                    offset: Offset(0.0, 0.0), // soften the shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Decision',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 49.h,
                      child: Text(
                        'Lorem Ipsum is simply dummy text of '
                        'the printing and typesetting industry. Lorem Ipsum'
                        ' has been the industry’s standard dummy text ever '
                        'since the 1500s, when an unknown printer took a galley '
                        'of type and scrambled it to make a type specimen book. '
                        'It has survived not only five centuries, '
                        'but also the leap into electronic typesetting,'
                        ' remaining essentially unchanged. It was popularised'
                        ' in the 1960s with the release of Letraset sheets containing'
                        ' Lorem Ipsum passages, and more recently with desktop publishing '
                        'software like Aldus PageMaker including versions of Lorem'
                        ' Ipsum.Why do we use it?It is a long established fact that'
                        ' a reader will be distra',
                        overflow: TextOverflow.clip,
                        style: GoogleFonts.poppins(
                          fontSize: 14.0.sp,
                          color: Color(0xff898989),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40.r),
                boxShadow: [
                  BoxShadow(
                    color: primaryColor.withOpacity(.1),
                    blurRadius: 6.0,
                    spreadRadius: 1.0,
                    offset: Offset(0.0, 0.0), // soften the shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Add Image',
                      style: GoogleFonts.poppins(
                        color: seconderyColor,
                        fontSize: 16.0.sp,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.circleMinus,
                                size: 24.sp,
                                color: Colors.red,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.r),
                              child: Image.asset(
                                'images/example.jpg',
                                width: 32.w,
                                height: 32.h,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            Text(
                              'Image',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 16.0.sp,
                              ),
                            ),
                            SizedBox(
                              width: 145.w,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.menu,
                                color: Color(0xffC6C6C6),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 85.w, bottom: 0),
                          child: Divider(
                            color: Color(0xffD0D0D0),
                            thickness: 1,
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.circleMinus,
                                size: 24.sp,
                                color: Colors.red,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.r),
                              child: Image.asset(
                                'images/example.jpg',
                                width: 32.w,
                                height: 32.h,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            Text(
                              'Image',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 16.0.sp,
                              ),
                            ),
                            SizedBox(
                              width: 145.w,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.menu,
                                color: Color(0xffC6C6C6),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 0.h),
            child: Theme(
              data: ThemeData().copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                initiallyExpanded: true,
                onExpansionChanged: (bool expanding) =>
                    setState(() => this.isExpanded2 = expanding),
                title: Text(
                  'Activity',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 20.0.sp,
                      fontWeight: FontWeight.w600),
                ),
                trailing: FaIcon(
                  isExpanded2
                      ? FontAwesomeIcons.angleUp
                      : FontAwesomeIcons.angleDown,
                  size: 16,
                  color: isExpanded2
                      ? seconderyColor
                      : subTitleColor,
                ),
                children: <Widget>[
                  Container(
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
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 9.w,
                                ),
                                child: CircleAvatar(
                                  radius: 12.r,
                                  backgroundImage:
                                      AssetImage('images/user.jpg'),
                                ),
                              ),
                              Text(
                                'Hussam',
                                style: GoogleFonts.poppins(
                                    fontSize: 18.0.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Spacer(),
                              Text(
                                'Today, 11:00 AM',
                                style: GoogleFonts.poppins(
                                    fontSize: 12.0.sp,
                                    color: subTitleColor),
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
                                  'The issue transferred to AAAA',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14.0.sp,
                                      color: subTitleColor),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
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
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 9.w,
                                ),
                                child: CircleAvatar(
                                  radius: 12.r,
                                  backgroundImage:
                                      AssetImage('images/user.jpg'),
                                ),
                              ),
                              Text(
                                'Ali',
                                style: GoogleFonts.poppins(
                                    fontSize: 18.0.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Spacer(),
                              Text(
                                'Today, 11:00 AM',
                                style: GoogleFonts.poppins(
                                    fontSize: 12.0.sp,
                                    color: subTitleColor),
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
                                  'The issue transferred to AAAA',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14.0.sp,
                                      color: subTitleColor),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              maxLines: null,
              minLines: null,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffEEEEF6),
                  hintText: 'Add new Activity …',
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 20.sp,
                    color: Color(0xffAFAFAF),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 20.h,
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.paperPlane,
                        color: primaryColor,
                      )),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(right: 9.w, left: 16.w),
                    child: CircleAvatar(
                      radius: 12.r,
                      backgroundImage: AssetImage(
                        'images/user.jpg',
                      ),
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(50.r)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.r),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.r),
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: 167.h,
          )
        ],
      ),
    );
  }
}
