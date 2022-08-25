import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:developer';

// ignore: camel_case_types, must_be_immutable
class Words_read extends StatefulWidget {
  Words_read({Key? key, required this.response, required this.index})
      : super(key: key);

  int index;
  List<dynamic> response;

  @override
  State<Words_read> createState() => _Words_readState();
}

// ignore: camel_case_types
class _Words_readState extends State<Words_read> {
  List<dynamic> response = [];
  List<String> listdesc = [];
  int rank = 0;
  int i = 0;
  late String word;
  int sec = 500;
  bool isactive = false;

  Timer _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {});

  @override
  void initState() {
    response = widget.response;
    rank = widget.index;
    log("$rank");
    log("${response[rank]['description']}");
    word = response[rank]['description'];

    listdesc = word.split(' ');
    listdesc.add("*** End ***");

    super.initState();
  }

  // ignore: non_constant_identifier_names
  void Reset_text() {
    setState(() {
      isactive = false;
      i = 0;
    });
    _timer.cancel();
  }

  // ignore: non_constant_identifier_names
  void Start_timer() {
    _timer = Timer.periodic(Duration(milliseconds: sec), (timer) {
      setState(() {
        log(sec.toString());
        log(i.toString());
        if (i < listdesc.length - 1 && i > -1) {
          i = i + 1;
        } else {
          isactive = false;

          _timer.cancel();
        }
      });
    });
  }

  // ignore: non_constant_identifier_names
  void decrease_timer() {
    setState(() {
      if (sec > 250) {
        isactive = false;
        _timer.cancel();
        i = 0;
        sec -= 250;
      } else {
        isactive = false;
        _timer.cancel();
        i = 0;
        sec = 250;
      }

      log(sec.toString());
    });
  }

  // ignore: non_constant_identifier_names
  void increase_timer() {
    setState(() {
      if (sec < 1000) {
        isactive = false;
        _timer.cancel();
        i = 0;
        sec += 250;
      } else {
        isactive = false;
        _timer.cancel();
        i = 0;
        sec = 1000;
      }

      log(sec.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Word game discover"),
      ),
      body: ListView(children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
          margin: const EdgeInsets.all(10),
          height: 300,
          width: double.infinity,
          child: Center(
            child: Text(
              listdesc[i],
              style: const TextStyle(color: Colors.white, fontSize: 35),
            ),
          ),
        ),
        SizedBox(
          height: 20,
          width: double.infinity,
          child: Center(
              child: Text(
            "Your are reading at 1 word per $sec milliseconds",
            style: const TextStyle(color: Colors.white),
          )),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: (() => increase_timer()),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(10)),
                    height: 40,
                    width: 60,
                    child: const Center(
                      child: Text(
                        "-1X",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
              GestureDetector(
                onTap: () {
                  if (isactive == true) {
                    _timer.cancel();
                    log(_timer.isActive.toString());
                  } else {
                    log("else Condition");
                    Start_timer();
                  }

                  setState(() {
                    if (listdesc.length == i + 1) {
                      i = 0;
                      _timer.cancel();
                      Start_timer();
                    }
                    if (isactive == false) {
                      isactive = true;
                    } else {
                      isactive = false;
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10)),
                  height: 40,
                  width: 60,
                  child: Center(
                      child: isactive
                          ? const Icon(
                              Icons.pause,
                              color: Colors.black,
                            )
                          : const Icon(
                              Icons.play_arrow,
                              color: Colors.black,
                            )),
                ),
              ),
              GestureDetector(
                onTap: () => decrease_timer(),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10)),
                  height: 40,
                  width: 60,
                  child: const Center(
                    child: Text(
                      "1X",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
