// ignore_for_file: camel_case_types

import 'package:bolt/screens/Discover/word_count_game.dart';
import 'package:flutter/material.dart';

class Detail_screen extends StatefulWidget {
  Detail_screen({Key? key, required this.response, required this.index})
      : super(key: key);
  List response;
  int index;
  @override
  State<Detail_screen> createState() => _Detail_screenState();
}

class _Detail_screenState extends State<Detail_screen> {
  List response = [];
  int index = 0;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    response = widget.response;
    index = widget.index;
    // log("Response from the other screen : $response");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Detail Screen"),
          actions: [
            GestureDetector(
              onTap: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) =>
                            Words_read(response: response, index: index))));
              }),
              child: const Icon(Icons.navigate_next_sharp),
            )
          ],
          backgroundColor: Colors.black,
        ),
        body: ListView(children: [
          Container(
              margin: const EdgeInsets.all(15),
              height: 160,
              width: double.infinity,
              child: Container(
                // ignore: sort_child_properties_last

                margin: const EdgeInsets.only(right: 9),
                width: MediaQuery.of(context).size.width * 0.91,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            NetworkImage("${response[index]['urlToImage']}")),
                    color: const Color.fromARGB(255, 28, 27, 27),
                    borderRadius: BorderRadius.circular(25)),
              )),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(1),
            height: 60,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Text(
                "${response[index]['title']}",
                style:
                    const TextStyle(color: Colors.yellowAccent, fontSize: 15),
              ),
            ),
          ),
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color.fromARGB(255, 39, 38, 38)),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            child: ListView(children: [
              Text(
                "\nDescription :\n\n" "${response[index]['description']}",
                style: const TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 18),
              ),
            ]),
          ),
        ]));
  }
}
