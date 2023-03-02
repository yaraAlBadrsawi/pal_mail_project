import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widget/search_box.dart';
import '../widget/title_bar.dart';

class SenderSearch extends StatefulWidget {
  const SenderSearch({Key? key}) : super(key: key);

  @override
  State<SenderSearch> createState() => _SenderSearchState();
}

class _SenderSearchState extends State<SenderSearch> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        TitleBar(
          title: 'Sender',
        ),
        SearchBox(),
        Row(
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
      ]),
    );
  }
}
