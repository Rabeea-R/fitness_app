import 'package:flutter/material.dart';
import 'admin_add.dart';

class Main_Page extends StatefulWidget {
  static final String routeName = '/admin1';
  const Main_Page({Key? key}) : super(key: key);

  @override
  _Main_PageState createState() => _Main_PageState();
}

class _Main_PageState extends State<Main_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Container(
            child: Column(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Add_Plan()),
                      );
                    },
                    child: Text('Add Plans')),
                TextButton(onPressed: () {}, child: Text('View Subscriptions'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
