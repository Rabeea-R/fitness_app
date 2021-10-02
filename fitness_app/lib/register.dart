import 'package:fitness_app/input_field.dart';
import 'package:fitness_app/loginbuttons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     fit: BoxFit.cover,
        //     //olorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
        //       //image: AssetImage('images/signup_img.png'),
        //       ),
        //   ),
        child: Expanded(
          child: Container(
            color: Colors.black,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Image.asset('images/loo.jpg'),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                const Padding(
                  padding: EdgeInsets.all(50),
                  child: Register_fields(),
                ),
                SignUpButton(),
                const SizedBox(
                  height: 25.0,
                ),
                SignUpText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
