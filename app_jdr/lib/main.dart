import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _imgSize = 200;
    return MaterialApp(
      home: SafeArea(
        bottom: true,
        top: true,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
            title: Center(child: Text('Title')),
            actions: [
              IconButton(
                icon: const Icon(Icons.add_alarm),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.open_in_browser),
                onPressed: () {},
              )
            ],
          ),
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
      ),
    );
  }
}
