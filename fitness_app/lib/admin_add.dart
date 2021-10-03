import 'package:flutter/material.dart';

class Add_Plan extends StatefulWidget {
  const Add_Plan({Key? key}) : super(key: key);

  @override
  _Add_PlanState createState() => _Add_PlanState();
}

class _Add_PlanState extends State<Add_Plan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  hintText: "Description",
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
                  hintText: "Price",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none),
            ),
          ),
          Title(color: Colors.black, child: Text('Upload Your Videos')),
          RaisedButton(
            onPressed: () {},
            child: Text("upload video"),
          ),
          TextButton(onPressed: () {}, child: Text('Save Plan'))
        ],
      ),
    );
  }
}