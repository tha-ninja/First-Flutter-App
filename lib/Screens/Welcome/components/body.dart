import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:first_app/Screens/Welcome/components/background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Gets Total Height and Width of our screen
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
            "Welcome To KEOnline",
            style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    ));
  }
}
