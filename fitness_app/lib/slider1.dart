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
      Slide(
          title: 'Train like 2x Pro'
              'Fitness Model World '
              'Champion Williams Falade',
          backgroundImage: "images/slider1-image.jpg"),
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
                width: 230.0,
                height: 50.0,
                child: ClipRRect(
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color(0xFF0D47A1),
                                Color(0xFF1976D2),
                                Color(0xFF42A5F5),
                              ],
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Get Started',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
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
    return new IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
    );
  }
}
