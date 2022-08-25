// ignore_for_file: camel_case_types, must_be_immutable

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
                child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(Icons.watch_later)))
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
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("${response[index]['source']}"),
          ),
          Padding(
            padding: const EdgeInsets.all(13),
            child: Center(
              child: Text(
                "${response[index]['title']}",
                style: const TextStyle(
                    color: Color.fromARGB(255, 246, 231, 93),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Montserrat'),
              ),
            ),
          ),
          const Divider(
            indent: 5,
            endIndent: 5,
            thickness: 0.2,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.all(13),
            child: Center(
              child: Text(
                "\n"
                "${response[index]['description']}",
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ]));
  }
}

class Book_summary_detail extends StatefulWidget {
  Book_summary_detail({Key? key, required this.response, required this.index})
      : super(key: key);

  int index;
  List<dynamic> response;

  @override
  State<Book_summary_detail> createState() => _Book_summary_detailState();
}

class _Book_summary_detailState extends State<Book_summary_detail> {
  List response = [];
  int index = 0;

  @override
  void initState() {
    response = widget.response;
    index = widget.index;

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
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(Icons.watch_later_outlined),
              ),
            )
          ],
          backgroundColor: Colors.black,
        ),
        body: ListView(children: [
          Container(
              margin: const EdgeInsets.all(15),
              height: 160,
              width: MediaQuery.of(context).size.width * 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 9),
                    width: MediaQuery.of(context).size.width * 0.35,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "${response[index]['urlToImage']}")),
                        color: const Color.fromARGB(255, 28, 27, 27),
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "${response[index]['title']}",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "${response[index]['author']}",
                          style: const TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Montserrat',
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ],
              )),
          const Divider(
            indent: 5,
            endIndent: 5,
            thickness: 0.2,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text(
              "\n"
              "${response[index]['description']}",
              style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontSize: 15,
              ),
            ),
          ),
        ]));
  }
}
