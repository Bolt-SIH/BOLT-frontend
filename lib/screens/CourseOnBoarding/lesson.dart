import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bolt/file_exported.dart';
import 'package:bolt/theme/app_styles.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rive/rive.dart';

import '../Learning_Games/learn_start.dart';

class LessonCompleted extends StatefulWidget {
  const LessonCompleted({Key? key}) : super(key: key);

  @override
  State<LessonCompleted> createState() => _LessonCompletedState();
}

class _LessonCompletedState extends State<LessonCompleted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const Landing_Page()));
          },
        ),
        backgroundColor: CustomColors.backgroundColor,
      ),
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Center(
                  child: Text(
                "Lesson Completed",
                style: TextStyle(
                    fontFamily: "baloo",
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: CustomColors.brightyellow),
              )),
            ),
          ),
          SizedBox(
            height: 200,
            child: RiveAnimation.asset(
              "assets/animation/birb.riv",
              controllers: [
                SimpleAnimation("lookUp"),
                SimpleAnimation("slowDance"),
              ],
              // slowDance , idle , lookUp
              onInit: (_) => setState(() {}),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          button("Completed", const Learn_start(), context)
        ]),
      ),
    );
  }
}
