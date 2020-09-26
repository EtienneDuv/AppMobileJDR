import 'package:flutter/material.dart';

Widget columnOption(context, IconData icon, String text, Function action) {
  return Container(
    margin: EdgeInsets.only(bottom: 35),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
    child: Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
            minHeight: 60,
            maxHeight: 60,
            minWidth: MediaQuery.of(context).size.width * 0.70,
            maxWidth: MediaQuery.of(context).size.width * 0.70),
        child: FlatButton(
          color: Colors.blue,
          textColor: Colors.white,
          disabledColor: Colors.grey,
          disabledTextColor: Colors.white,
          padding: EdgeInsets.all(8.0),
          splashColor: Colors.blueAccent,
          onPressed: action,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 10),
                child: Icon(icon),
              ),
              Text(text),
            ],
          ),
        ),
      ),
    ),
  );
}
