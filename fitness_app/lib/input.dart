import 'package:flutter/material.dart';

import 'loginbuttons.dart';
import 'input_field.dart';

class Input extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 0.0),
                child: Image.asset(
                  'images/login_logo.png',
                  width: 600.0,
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
          RegisterButton(),
        ],
      ),
    );
  }
}
