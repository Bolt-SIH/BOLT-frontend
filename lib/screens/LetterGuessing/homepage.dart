import 'dart:async';

import 'package:bolt/screens/LetterGuessing/trialpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


class FindTheLetter extends StatefulWidget {
  const FindTheLetter({super.key});

  @override
  State<FindTheLetter> createState() => _FindTheLetterState();
}

class _FindTheLetterState extends State<FindTheLetter> {
  late Timer _timer;
  int _start = 10;

  void startTimer() {
    const oneSec = Duration(seconds: 3);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const TrialPage()));
            // Navigator.pushReplacement(
            //     context, MaterialPageRoute(builder: ((context) => Vinit())));
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (BuildContext context) => const NewPage()));
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  double? _vinit;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
    _vinit = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    int score = 0;
    var list = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'];

//this actually changes the order of all of the elements in the list
//randomly, then returns the first element of the new list
    var randomItem = (list..shuffle()).first;
    List myProducts = [
      'a',
      'b',
      'c',
      'd',
      'e',
      'f',
      'g',
      'h',
      'i',
      'j',
      'k',
      'l',
      'm',
      'n',
      'o',
      'p',
      'q',
      'r',
      's',
      't',
      'u',
      'v',
      'w',
      'x',
      'y',
      'z'
    ];
    myProducts.shuffle();
    int i = 0;

    void same_check() {
      setState(() {
        if (_vinit! > 1) {
          // Navigator.pushReplacement(
          //     context, MaterialPageRoute(builder: (context) => NewPage()));
        }
        if (randomItem == myProducts[i]) {
          score++;
          _vinit = _vinit! + 0.09;
        }
        if (score > 1) {
          score--;
          _vinit = _vinit! - 0.09;
        }
      });
    }

    void dispose() {
      _timer.cancel();
      super.dispose();
    }

    bool vinit = false;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Text("Level I"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 20,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    child: LinearProgressIndicator(
                      minHeight: 6,
                      backgroundColor: Colors.grey,
                      value: _vinit,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 70,
              child: Text(
                "Find the Letter",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 40),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      child: Text(
                        randomItem,
                        style: TextStyle(fontSize: 38),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 500,

                // width: 200,
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 100,
                            childAspectRatio: 3 / 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                    itemCount: 24,
                    itemBuilder: (BuildContext ctx, index) {
                      return Column(
                        children: [
                          Center(
                            child: GestureDetector(
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    myProducts[index],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  i = index;
                                  // _vinit = _vinit! + 0.2;
                                  same_check();
                                  // dispose();
                                });
                              },
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
