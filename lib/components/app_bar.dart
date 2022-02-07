// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BaseAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  final String title;

  BaseAppBar(
    this.title, {
    required Key key,
  })  : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Row(
        children: [
          Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          Text(
            'back',
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}
