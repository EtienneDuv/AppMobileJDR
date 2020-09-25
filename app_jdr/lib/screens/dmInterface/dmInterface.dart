import 'package:app_jdr/widgets/defaultAppBar.dart';
import 'package:flutter/material.dart';

class DmInterface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: defaultAppBar('Dm Interface', [], context),
            body: Container(
              child: Center(
                child: Container(
                  child: Column(
                    children: [
                      Expanded(child: SizedBox()),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.70,
                        color: Colors.black12,
                        margin: EdgeInsets.only(bottom: 35),
                        child: Center(child: Text("Dm Interface")),
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.70,
                        color: Colors.black12,
                        margin: EdgeInsets.only(bottom: 35),
                        child: Center(child: Text("Dm Interface")),
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.70,
                        color: Colors.black12,
                        margin: EdgeInsets.only(bottom: 35),
                        child: Center(child: Text("Dm Interface")),
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.70,
                        color: Colors.black12,
                        margin: EdgeInsets.only(bottom: 35),
                        child: Center(child: Text("Dm Interface")),
                      ),
                      Expanded(child: SizedBox())
                    ],
                  ),
                ),
              ),
            )));
  }
}
