import 'package:app_jdr/widgets/defaultAppBar.dart';
import 'package:flutter/material.dart';

class DmInterface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: defaultAppBar('Dm Interface', [], context),
            body: ListView(
              children: [
                Center(
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.70,
                    color: Colors.black12,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Center(child: Text("Dm Interface")),
                  ),
                ),
                Center(
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.70,
                    color: Colors.black12,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Center(child: Text("Dm Interface")),
                  ),
                ),
                Center(
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.70,
                    color: Colors.black12,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Center(child: Text("Dm Interface")),
                  ),
                )
              ],
            )));
  }
}
