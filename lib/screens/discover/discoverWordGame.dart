// ignore: file_names
// ignore: file_names

import "../../file_exported.dart";

// ignore: camel_case_types
class disWordGame extends StatefulWidget {
  const disWordGame({Key? key}) : super(key: key);

  @override
  State<disWordGame> createState() => _disWordGameState();
}

// ignore: camel_case_types
class _disWordGameState extends State<disWordGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Word Game - Enhance your Eye Fixation!🔥"),
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey,
            ),
            margin: const EdgeInsets.only(
                left: 15, right: 15, top: 15, bottom: 0.0),
            padding: const EdgeInsets.all(4.0),
            child: const Center(child: Text("")),
          ),
          Container(
            height: 50,
            width: double.infinity,
            // margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(3.0),
            child: const Center(
                child: Text(
              "You are reading at a constant speed",
              style: TextStyle(color: Colors.white, fontSize: 18),
              textAlign: TextAlign.center,
            )),
          ),
          Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            height: 100,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blueGrey,
                    ),
                    child: const Center(
                        child: Text(
                      "-1X",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blueGrey,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.play_arrow_rounded,
                        size: 40,
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blueGrey,
                    ),
                    child: const Center(
                        child: Text(
                      "1X",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                  )
                ]),
          )
        ],
      ),
    );
  }
}
