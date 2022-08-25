import 'package:bolt/file_exported.dart';
import 'package:bolt/screens/Discover/word_count_game.dart';
import 'package:flutter/material.dart';

class Memory_game_1 extends StatefulWidget {
  const Memory_game_1({Key? key}) : super(key: key);

  @override
  State<Memory_game_1> createState() => _Memory_game_1State();
}

class _Memory_game_1State extends State<Memory_game_1> {
  late int i = 0;
  List words = [
    "Shall we start ?",
    "one",
    "two",
    "three",
    "four",
    "five",
    "six"
  ];
  Timer _timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {});
  bool isactive = false;

  @override
  void initState() {
    _timer = Timer.periodic(const Duration(milliseconds: 300), (timer) {
      setState(() {
        if (i < words.length - 1 && i > -1) {
          i = i + 1;
        } else {
          isactive = false;
          i = 0;

          _timer.cancel();
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.backgroundColor,
        title: const Text("Memory game 🧠"),
      ),
      body: Column(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: const LinearProgressIndicator(
            value: 0.5,
            color: Colors.amber,
            backgroundColor: Colors.blue,
            minHeight: 15,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.black),
          height: 200,
          width: MediaQuery.of(context).size.width * 0.6,
          child: Center(
            child: Text(
              words[i],
              style: const TextStyle(color: Colors.white, fontSize: 50),
            ),
          ),
        ),
        SizedBox(
          height: 90,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.black),
          height: 20,
          width: MediaQuery.of(context).size.width * 0.9,
          child: const Center(
            child: Text(
              "Remember the above words!",
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 20,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Container(
          height: 70,
          width: MediaQuery.of(context).size.width * 1,
          margin: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
          child: TextButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Memory_game_2()));
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                  CustomColors.successbuttonbackground),
            ),
            child: const Text("Continue",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'baloo',
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ]),
    );
  }
}

class Memory_game_2 extends StatefulWidget {
  const Memory_game_2({Key? key}) : super(key: key);

  @override
  State<Memory_game_2> createState() => _Memory_game_2State();
}

class _Memory_game_2State extends State<Memory_game_2> {
  List word_check = ["one", "ten", "twelve", "thirteen"];

  // void search() {
  //   for(int i=0;i<4;i++){
  //     if(word_check[i]==)
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: CustomColors.backgroundColor,
          title: const Text("Memory game 🧠"),
        ),
        body: ListView(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: const LinearProgressIndicator(
              value: 0.5,
              color: Colors.amber,
              backgroundColor: Colors.blue,
              minHeight: 15,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Which was the word you just saw ?",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 25,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            height: 450,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: word_check.length,
                itemBuilder: ((context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(18)),
                          alignment: Alignment.center,
                          child: Text(
                            word_check[index],
                            style: const TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Montserrat',
                                fontSize: 20),
                          ),
                        )),
                  );
                })),
          ),
          Spacer(
            flex: 1,
          ),
          Container(
            height: 70,
            width: MediaQuery.of(context).size.width * 1,
            margin: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Memory_game_2()));
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                    CustomColors.successbuttonbackground),
              ),
              child: const Text("Continue",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: 'baloo',
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ]));
  }
}
