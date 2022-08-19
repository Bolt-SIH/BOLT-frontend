// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:bolt/screens/discover/discoverWordGame.dart';

// ignore: camel_case_types, must_be_immutable
class openPage extends StatefulWidget {
  openPage({Key? key, required this.response, required this.index})
      : super(key: key);
  List response;
  int index;

  @override
  State<openPage> createState() => _openPageState();
}

// ignore: camel_case_types
class _openPageState extends State<openPage> {
  List response = [];
  int index = 0;

  @override
  // ignore: must_call_super
  void initState() {
    response = widget.response;
    index = widget.index;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Content Page"),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const disWordGame())));
            },
            child: const Icon(Icons.navigate_next_rounded),
          ),
        ],
      ),
      body: ListView(scrollDirection: Axis.vertical, children: [
        Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("${response[index]['urlToImage']}")),
              color: const Color.fromARGB(255, 37, 37, 37),
              borderRadius: BorderRadius.circular(20)),
        ),
        Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
                // color: const Color.fromARGB(255, 37, 37, 37),
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Column(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        "${response[index]['title']}",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ],
              ),
            )),
        // Container(
        //   width: double.infinity,
        //   // ignore: sort_child_properties_last
        //   child: const Center(
        //       child: Text(
        //     "Description",
        //     style: TextStyle(color: Colors.white60, fontSize: 18),
        //     textAlign: TextAlign.start,
        //   )),
        //   // margin: const EdgeInsets.all(8.0),
        //   padding: const EdgeInsets.all(4.0),
        // ),
        Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          width: double.infinity,
          // height: double.infinity,
          height: 600,
          decoration: BoxDecoration(
              // color: const Color.fromARGB(255, 37, 37, 37),
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              Expanded(
                child: Text(
                  "${response[index]['description']}" "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w200),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
