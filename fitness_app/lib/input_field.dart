import 'package:flutter/material.dart';
import 'const.dart';

class InputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: const TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: const TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}

class Register_fields extends StatelessWidget {
  const Register_fields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: const TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: "Name",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: const TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: const TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 25, 10),
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: const TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: "Re Enter Password",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}
