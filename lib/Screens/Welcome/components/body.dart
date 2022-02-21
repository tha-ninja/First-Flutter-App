import 'package:first_app/constants.dart';
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
        Image.asset(
          "assets/images/logo.png",
          width: size.width * 0.45,
          height: size.height * 0.07,
        ),
        TextFieldContainer(
            child: TextField(
          decoration: InputDecoration(
            icon: Icon(
                Icons.search,
                color: kSecondaryColor
            ),
            //suffixIcon: Icon(Icons.search),
            hintText: "Search Companies, Brands & Businesses",
            border: InputBorder.none,
            //labelText: "Search Companies, Brands & Businesses",
          ),
        )),
      ],
    ));
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.9,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
