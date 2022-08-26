import 'dart:developer';

import 'package:bolt/enums/api_type.dart';
import 'package:bolt/file_exported.dart';
import 'package:bolt/screens/CourseOnBoarding/intro.dart';
import 'package:bolt/screens/Discover/discover_main.dart';
import 'package:bolt/screens/games/game_collection.dart';
import 'package:bolt/services/api_request.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Landing_Page extends StatefulWidget {
  const Landing_Page({Key? key}) : super(key: key);

  @override
  State<Landing_Page> createState() => _Landing_PageState();
}

class _Landing_PageState extends State<Landing_Page> {
  final user = FirebaseAuth.instance.currentUser!;

  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: isSwitched
            ? const Text(
                "Lets Learn 👍",
                style: TextStyle(fontFamily: 'baloo', fontSize: 25),
              )
            : Text(
                "Hey, ${user.displayName!.split(" ")[0]} 👋",
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
      body: isSwitched ? Learn_start() : const Discover_Main(),
    );
  }
}

// ignore: camel_case_types
class Learn_start extends StatelessWidget {
  Learn_start({Key? key}) : super(key: key);
  final _apiRequest = ApiRequest(baseUrl: "3.110.119.227");

  bool CourseOnBoardedbool = false;
  Future CourseOnBoarded() async {
    http.Response response =
        await _apiRequest.getResponse("/user/onboarded", ApiType.get);
    if (json.decode(response.body)["CourseOnBoarded"]) {
      CourseOnBoardedbool = json.decode(response.body)["CourseOnBoarded"];
    }
    log(json.decode(response.body).toString());
  }

  @override
  Widget build(BuildContext context) {
    CourseOnBoarded();
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
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CourseOnBoardedbool
                          ? GameCollections()
                          : const CourseIntro1()));
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
