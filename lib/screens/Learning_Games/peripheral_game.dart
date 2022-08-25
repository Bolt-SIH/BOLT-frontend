import 'package:bolt/file_exported.dart';
import 'package:bolt/screens/Learning_Games/learn_start.dart';
import 'package:flutter/material.dart';

class Peripheral_game extends StatefulWidget {
  const Peripheral_game({Key? key}) : super(key: key);

  @override
  State<Peripheral_game> createState() => _Peripheral_gameState();
}

class _Peripheral_gameState extends State<Peripheral_game> {
  int mistake = 0;

  List<String> letters = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "A",
    "B",
    "C",
    "D",
    "E",
    "A",
    "B",
    "•",
    "D",
    "E",
    "A",
    "B",
    "C",
    "D",
    "E",
    "A",
    "B",
    "C",
    "D",
    "E",
  ];
  double progress = 0;

  Timer _timer = Timer.periodic(Duration(seconds: 1), (timer) {});
  bool isactive = false;

  bool passed = false;

  int time = 0;

  void Change_letter() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        time = time + 1;

        if (time < 11) {
          if (progress > 1) {
            progress = 0;
          } else {
            progress += 0.1;
          }

          if (time == 2) {
            letters[2] = "A";
            letters[10] = letters[14] = letters[22] = "B";
          } else if (time == 4) {
            letters[10] = "F";
            letters[2] = letters[14] = letters[22] = "C";
          } else if (time == 6) {
            letters[14] = "7";
            letters[10] = letters[2] = letters[22] = "6";
          } else if (time == 8) {
            letters[2] = "D";
            letters[10] = letters[14] = letters[22] = "6";
          } else if (time == 10) {
            letters[10] = "A";
            letters[2] = letters[14] = letters[22] = "B";
          }
        } else {
          _timer.cancel();
          time = 0;
          progress = 0;
          if (mistake == 5) {
            passed = true;
            print("you have found the correct mistakes");
            mistake = 0;
          } else {
            print("You havent focused correctly");
            mistake = 0;
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Peripheral vision 👁"),
        backgroundColor: CustomColors.backgroundColor,
      ),
      body: Column(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: LinearProgressIndicator(
            value: progress,
            color: Colors.amber,
            backgroundColor: Colors.blue,
            minHeight: 15,
          ),
        ),
        SizedBox(
            height: 80,
            width: MediaQuery.of(context).size.width * 1,
            child: const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                "Lets see! How good are you at focusing!!!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontFamily: 'Montserrat'),
              ),
            )),
        Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.white)),
            height: 325,
            width: MediaQuery.of(context).size.width * 0.9,
            child: GridView.count(
                crossAxisCount: 5,
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 0.0,
                children: List.generate(25, (index) {
                  return Center(
                    child: Container(
                        alignment: Alignment.center,
                        height: 63,
                        width: 63,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                        ),
                        child: Text(
                          letters[index],
                          style: const TextStyle(fontSize: 24),
                        )),
                  );
                }))),
        SizedBox(
          height: 30,
          width: MediaQuery.of(context).size.width * 1,
        ),
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 1,
          margin: const EdgeInsets.only(bottom: 20, left: 40, right: 40),
          child: TextButton(
            onPressed: () {
              setState(() {
                mistake += 1;
                print(mistake);
              });
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            ),
            child: const Text("Mistake",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontFamily: 'baloo',
                    fontWeight: FontWeight.bold)),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Container(
          height: 70,
          width: MediaQuery.of(context).size.width * 1,
          margin: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
          child: passed
              ? TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Peripheral_level2()));
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        CustomColors.successgreen),
                  ),
                  child: const Text("Level Up",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontFamily: 'baloo',
                          fontWeight: FontWeight.bold)),
                )
              : TextButton(
                  onPressed: () {
                    Change_letter();
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
                  child: const Text("Start",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontFamily: 'baloo',
                          fontWeight: FontWeight.bold)),
                ),
        ),
      ]),
    );
  }
}

class Peripheral_level2 extends StatefulWidget {
  const Peripheral_level2({Key? key}) : super(key: key);

  @override
  State<Peripheral_level2> createState() => _Peripheral_level2State();
}

class _Peripheral_level2State extends State<Peripheral_level2> {
  int mistake = 0;

  List<String> letters = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "A",
    "B",
    "C",
    "D",
    "E",
    "A",
    "B",
    "•",
    "D",
    "E",
    "A",
    "B",
    "C",
    "D",
    "E",
    "A",
    "B",
    "C",
    "D",
    "E",
  ];
  double progress = 0;

  Timer _timer = Timer.periodic(Duration(seconds: 1), (timer) {});
  bool isactive = false;

  bool passed = false;

  int time = 0;

  void Change_letter() {
    _timer = Timer.periodic(Duration(milliseconds: 400), (timer) {
      setState(() {
        time = time + 1;
        print(time);
        if (time < 11) {
          if (progress > 1) {
            progress = 0;
          } else {
            progress += 0.1;
          }

          if (time == 2) {
            letters[2] = "A";
            letters[10] = letters[14] = letters[22] = "B";
          } else if (time == 4) {
            letters[10] = "F";
            letters[2] = letters[14] = letters[22] = "C";
          } else if (time == 6) {
            letters[14] = "7";
            letters[10] = letters[2] = letters[22] = "6";
          } else if (time == 8) {
            letters[2] = "D";
            letters[10] = letters[14] = letters[22] = "6";
          } else if (time == 10) {
            letters[10] = "A";
            letters[2] = letters[14] = letters[22] = "B";
          }
        } else {
          _timer.cancel();
          time = 0;
          progress = 0;
          if (mistake == 5) {
            passed = true;
            print("you have found the correct mistakes" + mistake.toString());
            mistake = 0;
          } else {
            print("You havent focused correctly" + mistake.toString());
            mistake = 0;
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Peripheral vision 👁"),
        backgroundColor: CustomColors.backgroundColor,
      ),
      body: Column(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: LinearProgressIndicator(
            value: progress,
            color: Colors.amber,
            backgroundColor: Colors.blue,
            minHeight: 15,
          ),
        ),
        SizedBox(
            height: 80,
            width: MediaQuery.of(context).size.width * 1,
            child: const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                "Lets see! How good are you at focusing!!!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontFamily: 'Montserrat'),
              ),
            )),
        Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.white)),
            height: 325,
            width: MediaQuery.of(context).size.width * 0.9,
            child: GridView.count(
                crossAxisCount: 5,
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 0.0,
                children: List.generate(25, (index) {
                  return Center(
                    child: Container(
                        alignment: Alignment.center,
                        height: 63,
                        width: 63,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                        ),
                        child: Text(
                          letters[index],
                          style: const TextStyle(fontSize: 24),
                        )),
                  );
                }))),
        SizedBox(
          height: 30,
          width: MediaQuery.of(context).size.width * 1,
        ),
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 1,
          margin: const EdgeInsets.only(bottom: 20, left: 40, right: 40),
          child: TextButton(
            onPressed: () {
              setState(() {
                mistake += 1;
              });
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            ),
            child: const Text("Mistake",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontFamily: 'baloo',
                    fontWeight: FontWeight.bold)),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Container(
          height: 70,
          width: MediaQuery.of(context).size.width * 1,
          margin: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
          child: passed
              ? TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => Landing_Page())));
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        CustomColors.successgreen),
                  ),
                  child: const Text("End",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontFamily: 'baloo',
                          fontWeight: FontWeight.bold)),
                )
              : TextButton(
                  onPressed: () {
                    Change_letter();
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
                  child: const Text("Start",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontFamily: 'baloo',
                          fontWeight: FontWeight.bold)),
                ),
        ),
      ]),
    );
  }
}
