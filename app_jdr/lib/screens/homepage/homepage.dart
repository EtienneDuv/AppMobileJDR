import 'package:flutter/material.dart';
import 'package:app_jdr/widgets/defaultAppBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _imgSize = 200;
    return SafeArea(
      bottom: true,
      top: true,
      child: Scaffold(
        appBar: defaultAppBar('Home Page', [], context),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Expanded(flex: 1, child: SizedBox()),
              Container(
                constraints: BoxConstraints(
                    minHeight: _imgSize,
                    minWidth: _imgSize,
                    maxHeight: _imgSize,
                    maxWidth: _imgSize),
                child: SafeArea(
                  bottom: true,
                  child: Column(
                    children: [
                      Expanded(child: Image.asset('assets/images/dm.png')),
                      Text("Dungeon Master")
                    ],
                  ),
                ),
              ),
              Expanded(flex: 1, child: SizedBox()),
              Container(
                constraints: BoxConstraints(
                    minHeight: _imgSize,
                    minWidth: _imgSize,
                    maxHeight: _imgSize,
                    maxWidth: _imgSize),
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Image.asset('assets/images/dice.png'))),
                    Text("Player")
                  ],
                ),
              ),
              Expanded(flex: 1, child: SizedBox()),
            ],
          ),
        ),
        // child:
      ),
    );
  }
}
