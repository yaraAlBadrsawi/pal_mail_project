import 'package:flutter/material.dart';

import '../utils/constant.dart';
import '../widget/title_bar.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TitleBar(title: 'Category'),
            Container(
              decoration: roundedBox,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text('Official organization'),
                  ),
                  Text('NGOs'),
                  Text('UnBorder'),
                  Text('Others'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
