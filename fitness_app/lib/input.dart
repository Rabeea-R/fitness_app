import 'package:flutter/material.dart';

import 'loginbuttons.dart';
import 'InputField.dart';

class Input extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(60.0, 10.0, 60.0, 10.0),
                child: Image.asset(
                  'images/login_logo.png',
                  width: 500.0,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.black87, borderRadius: BorderRadius.circular(10)),
            child: InputField(),
          ),
          const SizedBox(
            height: 40,
          ),
          LoginButtons(),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "SignUp",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
