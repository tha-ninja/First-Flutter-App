import 'package:first_app/components/text_field_container.dart';
import 'package:flutter/material.dart';
import 'package:first_app/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    this.hintText = "Search Companies, Brands & Businesses",
    this.icon = Icons.search,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
            icon: Icon(icon, color: kSecondaryColor),
            //suffixIcon: Icon(Icons.search),
            hintText: hintText,
            border: InputBorder.none,
            //labelText: "Search Companies, Brands & Businesses",
          ),
        ));
  }
}