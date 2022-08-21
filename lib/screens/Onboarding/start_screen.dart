import 'package:bolt/screens/Discover/discover_main.dart';
import 'package:bolt/screens/Learning_Games/learn_start.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

// ignore: camel_case_types
class Start_Screen extends StatefulWidget {
  const Start_Screen({Key? key}) : super(key: key);

  @override
  State<Start_Screen> createState() => _Start_ScreenState();
}

// ignore: camel_case_types
class _Start_ScreenState extends State<Start_Screen> {
  int onboard_index = 0;
  final start_content = [
    {
      'image': 'assets/images/drdo_blaze.png',
      'title': 'What this collaboration brings?',
      'desc':
          'Hey Im bolt I will help you with creating a superpower in You!!!',
    },
    {
      'image': 'assets/images/ironman.gif',
      'title': 'How the Course was designed',
      'desc':
          'This course was designed in the sense to create a drastic change in the user'
    },
    {
      'image': 'assets/images/toggle.gif',
      'title': 'Switch Things!',
      'desc': 'We have two features in our app\nThe one is the '
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "Bolt ⚡",
            style: TextStyle(fontFamily: 'Montserrat'),
          ),
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 160, 0, 30),
            child: Container(
              height: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(
                        start_content[onboard_index]['image'].toString())),
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              height: 40,
              child: RichText(
                text: TextSpan(
                  text: start_content[onboard_index]['title'].toString(),
                  style: TextStyle(
                      color: Colors.yellow,
                      fontFamily: 'Montserrat',
                      fontSize: 20),
                ),
              )),
          Container(
              margin: const EdgeInsets.all(20),
              alignment: Alignment.topLeft,
              height: 100,
              child: RichText(
                text: TextSpan(
                  text: start_content[onboard_index]['desc'].toString(),
                  style: TextStyle(
                      color: Colors.yellow,
                      fontFamily: 'Montserrat',
                      fontSize: 16),
                ),
              )),
          Container(
            margin: const EdgeInsets.all(10),
            child: FlatButton(
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                onPressed: () {
                  setState(() {
                    if (onboard_index < start_content.length - 1) {
                      onboard_index += 1;
                    } else if (onboard_index == start_content.length - 1) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Landing_Page()));
                    }
                  });
                },
                color: const Color(0xffE7C1EA),
                child: const Text("Continue")),
          ),
        ]));
  }
}
