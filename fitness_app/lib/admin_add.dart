import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:media_picker/media_picker.dart';

class Add_Plan extends StatefulWidget {
  const Add_Plan({Key? key}) : super(key: key);

  @override
  _Add_PlanState createState() => _Add_PlanState();
}

class _Add_PlanState extends State<Add_Plan> {
  String planname = 'PlanName';
  String plandescription = 'PlanDescription';
  String planprice = 'PlanPrice';

  String _media = '';
  //List<dynamic> _mediaPaths ;

  @override
  initState() {
    super.initState();
  }

  pickVideos() async {
    try {
      //_mediaPaths = await MediaPicker.pickVideos(quantity: 7);
    } on PlatformException {}

    if (!mounted) return;

    setState(() {
      // _media = _mediaPaths.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50, 200, 50, 10),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              child: TextField(
                style: const TextStyle(color: Colors.grey),
                onChanged: (value) {
                  planname = value;
                },
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
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
                  plandescription = value;
                },
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
              child: TextField(
                style: TextStyle(color: Colors.grey),
                onChanged: (value) {
                  planprice = value;
                },
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: "Price",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
            //Title(color: Colors.black, child: Text('Upload Your Videos')),
            RaisedButton(
              onPressed: () {
                pickVideos();
              },
              child: Text("upload video"),
            ),
            SizedBox(
              width: 150,
              child: TextButton(
                onPressed: () {
                  print('yes');
                },
                child: Text('Save Plan'),
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.grey,
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
