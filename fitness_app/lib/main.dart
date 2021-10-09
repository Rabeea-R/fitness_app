import 'package:fitness_app/admin_panel.dart';
import 'package:fitness_app/login_page.dart';
import 'package:flutter/services.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitness_app/plans.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'slider1.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'plans.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Splash Screen',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Main_Page(),
        //home: MyHomePage(),
        debugShowCheckedModeBanner: false,
        routes: {
          Sliderr.routeName: (context) => Sliderr(),
          Login_Page.routeName: (context) => Login_Page(),
          Plans.routeName: (context) => Plans(),
          // Main_Page.routeName: (context) => Main_Page(),
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
      Duration(seconds: 1),
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
