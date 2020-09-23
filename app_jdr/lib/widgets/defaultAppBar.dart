import 'package:flutter/material.dart';
import 'dart:developer';

Widget defaultAppBar(String title, List<Widget> icons, BuildContext context) {
  final isRoot = ModalRoute.of(context).settings.name == '/' ? true : false;
  return AppBar(
    leading: !isRoot
        ? IconButton(icon: Icon(Icons.arrow_back), onPressed: () {})
        : null,
    title: Text(title),
    actions: icons,
    centerTitle: true,
  );
}
