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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        // Image.asset("assets/images/logo.png",
        //     width: size.width * 0.25,
        //     height: size.height * 0.6),


        TextField(
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            labelText: "Search Companies, Brands & Businesses",
            width:
          ),
        ),
      ],
    ));
  }
}
