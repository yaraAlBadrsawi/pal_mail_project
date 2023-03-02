import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pal_mail_project/utils/constant.dart';

import '../widget/tag_container.dart';
import 'new_inbox.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const id = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isExpanded = false;
  bool isExpanded2 = false;

  @override
  Widget build(BuildContext context) {
    List<dynamic> cardData = [
      {
        'color': Colors.red,
        'statues': 'Inbox',
      },
      {
        'color': Colors.yellow,
        'statues': 'Pending',
      },
      {
        'color': Colors.blue,
        'statues': 'In progress',
      },
      {
        'color': Colors.green,
        'statues': 'Completed',
      },
    ];
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        backgroundColor: backgroundColor,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('images/user.jpg'),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(50.r),
              shadowColor: primaryColor.withOpacity(.2),
              child: TextField(
                maxLines: null,
                minLines: null,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Search',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 20.sp,
                      color: Color(0xffAFAFAF),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20.h,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20,
                      color: Color(0xffAFAFAF),
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
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.8,
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.h,
                  crossAxisSpacing: 16.w),
              itemCount: 4,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Container(
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
                            CircleAvatar(
                              backgroundColor: cardData[index]['color'],
                              radius: 12.r,
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            Text(
                              '9',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Text(
                          '${cardData[index]['statues']}',
                          style: GoogleFonts.poppins(
                              color: subTitleColor, fontSize: 18.sp),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 0),
            child: Theme(
              data: ThemeData().copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                initiallyExpanded: true,
                onExpansionChanged: (bool expanding) =>
                    setState(() => this.isExpanded = expanding),
                title: Text(
                  'Official Organization',
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
                                  backgroundColor: Colors.blue,
                                  radius: 12.r,
                                ),
                              ),
                              Text(
                                'Organization Name',
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
                                  'Here we add the subject',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.0.sp,
                                  ),
                                ),
                                Text(
                                  'And here excerpt of the mail, can added to this location. And we can do more to this like …',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14.0.sp,
                                      color: seconderyColor),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Text(
                                  '#Urgent  #Egyptian Military',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14.0.sp,
                                      color: seconderyColor,
                                      fontWeight: FontWeight.w600),
                                ),
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10.r),
                                      child: Image.asset(
                                        'images/example.jpg',
                                        width: 36.w,
                                        height: 36.h,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10.r),
                                      child: Image.asset(
                                        'images/example.jpg',
                                        width: 36.w,
                                        height: 36.h,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 36.w,
              left: 36.w,
              top: isExpanded ? 44.h : 0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'NGOs',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Text(
                      '12 ',
                      style: GoogleFonts.poppins(
                          color: subTitleColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    FaIcon(
                      FontAwesomeIcons.angleRight,
                      size: 12,
                      color: subTitleColor,
                    ),
                  ],
                ),
              ],
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
                  'Others',
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
                                  backgroundColor: Colors.red,
                                  radius: 12.r,
                                ),
                              ),
                              Text(
                                'Organization Name',
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
                                  'Here we add the subject',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.0.sp,
                                  ),
                                ),
                                Text(
                                  'And here excerpt of the mail, can added to this location. And we can do more to this like …',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14.0.sp,
                                      color: seconderyColor),
                                ),
                                Divider(
                                  thickness: .3,
                                  color: subTitleColor,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 9.w,
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.yellow,
                                  radius: 12.r,
                                ),
                              ),
                              Text(
                                'Organization Name',
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
                                  'Here we add the subject',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.0.sp,
                                  ),
                                ),
                                Text(
                                  'And here excerpt of the mail, can added to this location. And we can do more to this like …',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14.0.sp,
                                      color: seconderyColor),
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
            padding: EdgeInsets.only(
              right: 36.w,
              left: 36.w,
              top: isExpanded2 ? 44.h : 0,
            ),
            child: Text(
              'Tags',
              style: GoogleFonts.poppins(
                  fontSize: 20.0.sp, fontWeight: FontWeight.w600),
            ),
          ),
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
          Container(
            height: 57.h,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Color(0xffD0D0D0),
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, NewInbox.id);
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.circlePlus,
                      size: 24.sp,
                      color: seconderyColor,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, NewInbox.id);
                    },
                    child: Text(
                      ' New Inbox',
                      style: GoogleFonts.poppins(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        color: seconderyColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
