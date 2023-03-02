import 'package:flutter/material.dart';
import 'package:pal_mail_project/utils/constant.dart';
import 'package:pal_mail_project/widget/title_bar.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({Key? key}) : super(key: key);
  static const String id="SearchFilter";

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  @override

      Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Column(
            children: [
              TitleBar(title: 'Search Filter '),
              Container(
                decoration: roundedBox,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
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
