// ignore_for_file: camel_case_types

import 'package:bolt/screens/Onboarding/userintrests.dart';

import 'package:flutter/material.dart';

class userAge extends StatefulWidget {
  userAge({Key? key}) : super(key: key);

  @override
  State<userAge> createState() => _userAgeState();
}

class _userAgeState extends State<userAge> {
  List enteryourage = ['12 - 16  years', '17 - 24  years', '24+  years'];

  List enteredageis = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.8,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.8,
              color: Colors.black,
              child: Center(
                child: RichText(
                  text: const TextSpan(children: [
                    TextSpan(
                      text: "What's your",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    TextSpan(
                      text: ' age ?',
                      style: TextStyle(
                          color: Color.fromARGB(255, 214, 160, 10),
                          fontSize: 30),
                    )
                  ]),
                  // "What's your age ?",
                  // style: TextStyle(color: Colors.yellow, fontSize: 30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(255, 53, 51, 51),
                ),
                child: TextButton(
                  child: Text(
                    enteryourage[0],
                    textAlign: TextAlign.start,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    setState(() {
                      enteredageis.add(enteryourage[0]);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => userIntrests(
                                    age: enteryourage[0],
                                  )));
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 53, 51, 51),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextButton(
                  child: Text(
                    enteryourage[1],
                    textAlign: TextAlign.start,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    setState(() {
                      enteredageis.add(enteryourage[1]);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => userIntrests(
                                    age: enteryourage[1],
                                  )));
                    });
                  },
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.09,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromARGB(255, 53, 51, 51),
              ),
              child: TextButton(
                // style: (ButtonStyle(
                //     overlayColor: MaterialStateProperty.all(Colors.yellow))),
                child: Text(
                  enteryourage[2],
                  textAlign: TextAlign.start,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {
                  setState(() {
                    enteredageis.add(enteryourage[2]);

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => userIntrests(
                                  age: enteryourage[2],
                                )));
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
