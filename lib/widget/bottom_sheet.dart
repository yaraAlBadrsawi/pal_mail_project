import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xFfF7F6FF),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10))),
      padding: const EdgeInsets.symmetric(
          vertical: 15),
      alignment: Alignment.center,
      height: 270.h,
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text("      Title of Mail",
                  style: TextStyle(
                      fontWeight:
                      FontWeight.w400,
                      fontSize: 14,
                      color:
                      Color(0xFF272727))),
              const Spacer(),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon:
                  const Icon(Icons.close)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment:
            MainAxisAlignment.center,
            crossAxisAlignment:
            CrossAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.only(
                        topLeft: Radius
                            .circular(10),
                        topRight:
                        Radius.circular(
                            10))),
                padding:
                const EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Column(
                  children: const [
                    Icon(
                      Icons.archive_rounded,
                      color: Color(0xFF7C7C7C),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Archive',
                      style: TextStyle(
                          color:
                          Color(0xFF7C7C7C),
                          fontSize: 14,
                          fontWeight:
                          FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.only(
                        topLeft: Radius
                            .circular(10),
                        topRight:
                        Radius.circular(
                            10))),
                padding:
                const EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Column(
                  children: const [
                    Icon(Icons.share_rounded,
                        color:
                        Color(0xFF6589FF)),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Share',
                      style: TextStyle(
                          color:
                          Color(0xFF6589FF),
                          fontSize: 14,
                          fontWeight:
                          FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.only(
                        topLeft: Radius
                            .circular(10),
                        topRight:
                        Radius.circular(
                            10))),
                padding:
                const EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Column(
                  children: const [
                    Icon(Icons.delete,
                        color:
                        Color(0xFFE62929)),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Delete',
                      style: TextStyle(
                          color:
                          Color(0xFFE62929),
                          fontSize: 14,
                          fontWeight:
                          FontWeight.w400),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}