import 'package:bolt/screens/Discover/discover_main.dart';
import 'package:flutter/material.dart';

class Landing_Page extends StatefulWidget {
  const Landing_Page({Key? key}) : super(key: key);

  @override
  State<Landing_Page> createState() => _Landing_PageState();
}

class _Landing_PageState extends State<Landing_Page> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: isSwitched
            ? const Text(
                "Lets Learn 👍",
                style: TextStyle(fontFamily: 'baloo', fontSize: 25),
              )
            : const Text(
                "Hey, Sachin 👋",
                style: TextStyle(fontFamily: 'baloo', fontSize: 25),
              ),
        actions: [
          Switch(
              onChanged: (isfalse) {
                setState(() {
                  isSwitched = isfalse;
                });
              },
              value: isSwitched,
              activeColor: Colors.blue,
              activeTrackColor: Colors.white,
              inactiveThumbColor: Colors.grey,
              inactiveTrackColor: Colors.white),
        ],
      ),
      body: isSwitched ? const Learn_start() : const Discover_Main(),
    );
  }
}

class Learn_start extends StatelessWidget {
  const Learn_start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          color: Colors.grey,
          height: 100,
          width: MediaQuery.of(context).size.width * 0.9,
        )
      ],
    );
  }
}
