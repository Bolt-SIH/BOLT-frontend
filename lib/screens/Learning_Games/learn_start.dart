import 'dart:developer';

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
              activeColor: Colors.grey,
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
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 17),
      child: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width * 0.9,
            child: ClipRRect(
              child: Image.asset("assets/images/feature_image.png"),
            ),
          ),
          GestureDetector(
            onTap: () {
              log("Pressed");
            },
            child: Container(
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width * 0.9,
              child: ClipRRect(
                child: Image.asset("assets/images/speedread.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
