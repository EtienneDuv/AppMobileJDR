import 'package:flutter/material.dart';

Widget defaultAppBar(String title, List<Widget> icons, BuildContext context) {
  final isRoot = ModalRoute.of(context).settings.name == '/' ? true : false;
  return AppBar(
    leading: !isRoot
        ? IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            })
        : null,
    title: Text(title),
    actions: icons,
    centerTitle: true,
  );
}
