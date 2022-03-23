import 'package:flutter/material.dart';


class MyTextFormField extends StatefulWidget {
  const MyTextFormField({Key? key}) : super(key: key);

  @override
  _MyTextFormFieldState createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  @override
  Widget build(BuildContext context) {
    return    Padding(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            labelText: "Email Address",
            fillColor: Color.fromRGBO(246, 246, 246, 255),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(
                color: Colors.white,
                width: 2.0,
              ),
            ),
          ),
        ));
  }
}
