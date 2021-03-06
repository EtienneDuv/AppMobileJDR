import 'package:app_jdr/screens/playerInterface/playerInterface.dart';
import 'package:app_jdr/screens/dmInterface/dmInterface.dart';
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
        body: Center(
          child: Column(
            children: [
              Expanded(flex: 2, child: SizedBox()),
              InkWell(
                borderRadius: BorderRadius.all(Radius.circular(200)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DmInterface()),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Container(
                    margin: EdgeInsets.all(15),
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
                ),
              ),
              Expanded(flex: 1, child: SizedBox()),
              InkWell(
                borderRadius: BorderRadius.all(Radius.circular(200)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PlayerInterface()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(15),
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
              ),
              Expanded(flex: 2, child: SizedBox()),
            ],
          ),
        ),
        // child:
      ),
    );
  }
}
