import 'package:flutter/material.dart';
import 'const.dart';

class InputField extends StatefulWidget {
  const InputField({Key? key}) : super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  String login_email = 'LoginEmail';
  String login_password = 'LoginPassword';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: TextField(
            style: TextStyle(color: Colors.grey),
            onChanged: (value) {
              login_email = value;
            },
            keyboardType: TextInputType.emailAddress,
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
          child: TextField(
            style: TextStyle(color: Colors.grey),
            onChanged: (value) {
              login_email = value;
            },
            obscureText: true,
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

class Register_fields extends StatefulWidget {
  const Register_fields({Key? key}) : super(key: key);

  @override
  _Register_fieldsState createState() => _Register_fieldsState();
}

class _Register_fieldsState extends State<Register_fields> {
  String name = 'name';
  String email = 'email';
  String password = 'password';
  String re_password = 'repassword';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: TextField(
            style: TextStyle(color: Colors.grey),
            onChanged: (value) {
              name = value;
            },
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
          child: TextField(
            style: TextStyle(color: Colors.grey),
            onChanged: (value) {
              email = value;
            },
            keyboardType: TextInputType.emailAddress,
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
          child: TextField(
            style: TextStyle(color: Colors.grey),
            obscureText: true,
            onChanged: (value) {
              password = value;
            },
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
          child: TextField(
            style: TextStyle(color: Colors.grey),
            onChanged: (value) {
              re_password = value;
            },
            obscureText: true,
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
