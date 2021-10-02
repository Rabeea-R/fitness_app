import 'package:fitness_app/const.dart';
import 'package:flutter/material.dart';

class Plans extends StatefulWidget {
  static final String routeName = '/plans';
  const Plans({Key? key}) : super(key: key);

  @override
  _PlansState createState() => _PlansState();
}

class _PlansState extends State<Plans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Image.asset('images/plan_logo.png', fit: BoxFit.cover)),
        backgroundColor: Colors.blueGrey[900],
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Colors.blueGrey[900],
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text(
                kt3,
                style: new TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: new Text(
                kt4,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          height: 90,
                          width: 400,
                          color: Colors.grey,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Image.asset(
                                  'images/plan_1.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Expanded(
                                flex: 8,
                                child: Column(
                                  children: <Widget>[
                                    new Text("Your Text Here"),
                                    new Text("Your Price Here"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
