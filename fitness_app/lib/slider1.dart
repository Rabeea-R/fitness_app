import 'package:fitness_app/login_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'const.dart';

import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';

class Sliderr extends StatefulWidget {
  static final String routeName = '/slider';

  @override
  State<StatefulWidget> createState() {
    return SliderState();
  }
}

class SliderState extends State<Sliderr> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();

    slides.add(
      Slide(title: kt, backgroundImage: "images/slider1-image.jpg"),
    );
    slides.add(
      Slide(
        title: kt1,
        backgroundImage: "images/slider1-image.jpg",
        centerWidget: Column(
          children: [
            Text(kt2),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 350.0, 30.0, 20.0),
              child: SizedBox(
                width: 190.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login_Page()),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Text('Get Started'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onDonePress() {
    // Do what you want
    print("End of slides");
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
    );
  }
}
