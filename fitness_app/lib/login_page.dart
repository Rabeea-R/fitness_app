import 'package:flutter/material.dart';
import 'head.dart';
import 'inputField.dart';
import 'input.dart';

// class Login_Page extends StatelessWidget {
//   const Login_Page({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('images/slider1-image.jpg'),
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class Login_Page extends StatefulWidget {
  static final String routeName = '/login_page';
  const Login_Page({Key? key}) : super(key: key);

  @override
  _Login_PageState createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // child: Column(
        //   //mainAxisAlignment: MainAxisAlignment.,
        //   children: <Widget>[
        //     Expanded(
        //       flex: 1,
        //       child: Container(
        //         color: Colors.blue,
        //         width: MediaQuery.of(context).size.width,
        //         height: MediaQuery.of(context).size.height * 0.25,
        //         child: Image.asset(
        //           'images/login_img.jpg',
        //           fit: BoxFit.fill,
        //         ),
        //       ),
        //     ),
        //     Expanded(
        //       flex: 2,
        //       child: Container(
        //         color: Colors.blueGrey,
        //         height: MediaQuery.of(context).size.height * 0.25,
        //         child: Column(
        //           children: [
        //             Row(
        //               children: [
        //                 Expanded(
        //                   child: Center(
        //                     child: Padding(
        //                       padding: const EdgeInsets.fromLTRB(
        //                           60.0, 10.0, 60.0, 10.0),
        //                       child: Image.asset(
        //                         'images/login_logo.png',
        //                         width: 500.0,
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //             Expanded(
        //               child: Container(
        //                 padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        //                 child: const TextField(
        //                   textAlign: TextAlign.center,
        //                   decoration:
        //                       InputDecoration(hintText: 'Email Address'),
        //                 ),
        //                 //width: MediaQuery.of(context).size.width * 0.5,
        //               ),
        //             ),
        //             SizedBox(
        //               height: 0.0,
        //             ),
        //             Expanded(
        //               child: Container(
        //                 padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
        //                 child: const TextField(
        //                   textAlign: TextAlign.center,
        //                   decoration: InputDecoration(hintText: 'Password'),
        //                 ),
        //                 //width: MediaQuery.of(context).size.width * 0.5,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        child: Column(
          children: <Widget>[
            // SizedBox(
            //   height: 80,
            // ),
            Expanded(
              flex: 1,
              child: Container(
                child: ClipRRect(
                  // borderRadius: BorderRadius.only(
                  //   bottomLeft: Radius.circular(60),
                  //   bottomRight: Radius.circular(60),
                  // ),
                  child: Image.asset(
                    'images/login_img.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
              ),
            ),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.black,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    child: Input(),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
