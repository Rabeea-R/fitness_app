import 'package:fitness_app/login_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'slider1.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application....sajjad.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Splash Screen',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MyHomePage(),
        debugShowCheckedModeBanner: false,
        routes: {
          Sliderr.routeName: (context) => Sliderr(),
          Login_Page.routeName: (context) => Login_Page()
        });
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Sliderr())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}
