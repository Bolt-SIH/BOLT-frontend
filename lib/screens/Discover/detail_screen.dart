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
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 9, bottom: 1),
            child: Text(
              "${response[index]['source']}",
              style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                  fontFamily: 'Montserrat'),
            ),
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
                "${response[index]['description']}\n\n Our personal finances play a huge role in our lives. And yet people rarely discuss them and educate themselves on this topic. For this reason, many presumptions and false ideas about money have emerged over the years.\n\nThey think having money is a result of luck or that rich people are all inheritors. Or perhaps wealth belongs only to those who disrupt the world and benefit from their discoveries.\n\n Wrong! Money is a universal, circular asset in the world. And you too can become financially independent, if you choose to adopt a few wealth-growing practices and change your current mindset. At first, you’ll have to acknowledge your financial situation. Biased financial decisions are what stand in the way between your current life and the life you desire.Then, it’ll be easier to spot and get rid of them. Your ways of seeking status, your envy, and other emotions that have control over you all play a significant role when it comes to your financial decisions. Of course, there are other things to explore when it comes to making better choices with your money. The Psychology of Money outlines what it is that you can do starting today to improve your financial status. Here are my three favorite lessons from the book:Being greedy can turn out to be the biggest financial mistake you’ll ever make. Envy has no place in the money market, as it can blur your thinking. Our early experiences with money determine our financial decisions later on. Now, let’s discuss these lessons in detail, and see how we can benefit from them!",
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
              child: const Icon(Icons.navigate_next_sharp),
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
                                fontSize: 18,
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 1,
                        ),
                        child: Text(
                          "${response[index]['author']}",
                          style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ],
                  )
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
