import 'package:bolt/file_exported.dart';
import 'package:bolt/screens/Discover/discover_main.dart';
import 'package:bolt/screens/Learning_Games/learn_start.dart';
import 'package:bolt/screens/Onboarding/userage.dart';
import 'package:flutter/material.dart';

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
      'title': 'How the Course was designed?',
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
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 17),
          height: MediaQuery.of(context).size.height,
          child: Column(children: [
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
            const Spacer(
              flex: 1,
            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(bottom: 15),
                child: RichText(
                  text: TextSpan(
                    text: start_content[onboard_index]['title'].toString(),
                    style: const TextStyle(
                        color: CustomColors.brightyellow,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 21),
                  ),
                )),
            Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(bottom: 30),
                child: RichText(
                  text: TextSpan(
                    text: start_content[onboard_index]['desc'].toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300,
                        fontSize: 18),
                  ),
                )),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xff02C7FC),
                      onPrimary: const Color(0xff000000),
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                  onPressed: () {
                    setState(() {
                      if (onboard_index < start_content.length - 1) {
                        onboard_index += 1;
                      } else if (onboard_index == start_content.length - 1) {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => userAge()));
                      }
                    });
                  },
                  child: const Text(
                    "Continue",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )),
            ),
          ]),
        ));
  }
}
