import 'package:bolt/screens/games/LetterGuessing/newpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class TrialPage extends StatefulWidget {
  const TrialPage({super.key});

  @override
  State<TrialPage> createState() => _TrialPageState();
}

class _TrialPageState extends State<TrialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: const Text(
                    "Get Ready For Next Level",
                    style: TextStyle(fontSize: 20, color: Colors.yellow),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height * 0.10,
                    width: MediaQuery.of(context).size.width * 0.78,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)),
                    child: TextButton(
                        child: const Text(
                          "Continue",
                          style: TextStyle(fontSize: 35, color: Colors.yellow),
                        ),
                        onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NewPage()),
                            ))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
