// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

// ignore: camel_case_types
class switchPage extends StatefulWidget {
  const switchPage({Key? key}) : super(key: key);

  @override
  State<switchPage> createState() => _switchPageState();
}

// ignore: camel_case_types
class _switchPageState extends State<switchPage> {
  bool isSwitched = true;
  bool isfalse = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to Bolt 🔥"),
        actions: [
          Switch(
            onChanged: (bool isfalse) {
              Navigator.pop(context);
            },
            value: isSwitched,
            activeColor: Colors.blueAccent,
            activeTrackColor: Colors.white,
            inactiveThumbColor: Colors.grey,
            inactiveTrackColor: Colors.white,
          ),
        ],
        backgroundColor: Colors.black26,
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(8.0),
            height: 200,
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://leverageedu.com/blog/wp-content/uploads/2019/09/Importance-of-Reading.jpg")),
                borderRadius: BorderRadius.circular(22)),
          ),
          Container(
            height: 120,
            width: double.infinity,
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "Books are a uniquely portable magic!",
              style: TextStyle(fontSize: 22, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
                color: const Color.fromARGB(200, 37, 37, 37),
                borderRadius: BorderRadius.circular(22)),
          )
        ],
      ),
    );
  }
}
