import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pal_mail_project/utils/constant.dart';

import '../widget/custom_header.dart';
import '../widget/search_box.dart';

class SenderSearch extends StatefulWidget {
  const SenderSearch({Key? key}) : super(key: key);
  static const String id = "SenderSearch";

  @override
  State<SenderSearch> createState() => _SenderSearchState();
}

class _SenderSearchState extends State<SenderSearch> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          CustomHeader(
            title: 'Sender',
          ),
          SearchBox(),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: roundedBox,
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset('images/svg/user.svg'),
                const Text('sender '),
                const Divider(),
                SvgPicture.asset('images/svg/user.svg'),
                const Text('sender '),
                const Divider(),
                SvgPicture.asset('images/svg/user.svg'),
                const Text('sender '),
                const Divider(),
                SvgPicture.asset('images/svg/user.svg'),
                const Text('sender '),
                const Divider(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
