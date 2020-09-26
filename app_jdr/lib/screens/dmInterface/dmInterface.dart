import 'package:app_jdr/widgets/defaultAppBar.dart';
import 'package:app_jdr/widgets/columnOption.dart';
import 'package:flutter/material.dart';

class DmInterface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: defaultAppBar('Dm Interface', [], context),
            body: Column(
              children: [
                Expanded(child: SizedBox()),
                columnOption(context, Icons.folder, 'My campains', () {}),
                columnOption(context, Icons.map, 'My maps', () {}),
                Expanded(child: SizedBox())
              ],
            )));
  }
}
