import 'package:flutter/material.dart';
import '../utils/constant.dart';
import '../widget/title_bar.dart';

class TagScreen extends StatelessWidget {
  static const String id = 'TagScreen';

  const TagScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TitleBar(title: 'Tages'),
          Container(
            margin: EdgeInsets.all(40),
            decoration: roundedBox,
            child: Container(
                margin: EdgeInsets.all(1),
                decoration: roundedBox.copyWith(color: Colors.grey),
                child: Text('tages')),
          )
        ],
      ),
    );
  }
}
