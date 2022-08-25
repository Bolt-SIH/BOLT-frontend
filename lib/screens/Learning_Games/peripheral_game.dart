import 'package:bolt/file_exported.dart';
import 'package:flutter/material.dart';

class Peripheral_game extends StatefulWidget {
  const Peripheral_game({Key? key}) : super(key: key);

  @override
  State<Peripheral_game> createState() => _Peripheral_gameState();
}

class _Peripheral_gameState extends State<Peripheral_game> {
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
          child: const LinearProgressIndicator(
            value: 0.5,
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
                        child: Text(
                          letters[index],
                          style: TextStyle(fontSize: 24),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                        )),
                  );
                }))),
        Spacer(
          flex: 1,
        ),
        Container(
          height: 70,
          width: MediaQuery.of(context).size.width * 1,
          margin: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
          child: TextButton(
            onPressed: () {
              setState(() {
                letters[2] = letters[10] = letters[14] = letters[22] = "5";
              });
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
