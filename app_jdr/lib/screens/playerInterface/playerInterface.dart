import 'package:app_jdr/widgets/defaultAppBar.dart';
import 'package:flutter/material.dart';

class PlayerInterface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: defaultAppBar(
        'Player Interface',
      ),
    ));
  }
}
