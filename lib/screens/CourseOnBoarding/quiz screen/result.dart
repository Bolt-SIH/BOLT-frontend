import 'package:bolt/file_exported.dart';
import 'package:bolt/screens/CourseOnBoarding/lesson.dart';
import 'package:bolt/screens/games/game_collection.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rive/rive.dart';

class Result extends StatefulWidget {
  final int result;
  const Result({Key? key, required this.result}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 17),
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const LinearProgressIndicator(
                  backgroundColor: CustomColors.progressBarBackground,
                  minHeight: 14,
                  value: 0.4,
                  valueColor:
                      AlwaysStoppedAnimation<Color>(CustomColors.brightyellow),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        "${(widget.result / 3).round()}",
                        // Number of words count = 268
                        style: const TextStyle(
                            fontSize: 100,
                            color: CustomColors.brightyellow,
                            fontFamily: "baloo",
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Is your Comprehension level out of 100",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 250,
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: RiveAnimation.asset(
                    fit: BoxFit.fitHeight,
                    "assets/animation/celebration.riv",
                    controllers: [
                      SimpleAnimation("Tada"),
                    ],
                    // slowDance , idle , lookUp
                    onInit: (_) => setState(() {}),
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.5,
                  color: const Color(0xff02C7FC),
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(children: const [
                Text(
                  "Tip",
                  style: TextStyle(
                    fontFamily: "baloo",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "An average person reads at the pace of 250WPM and 100 Comprehension.",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "baloo",
                  ),
                ),
              ]),
            ),
            const Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Should now navigate to question screen.
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LessonCompleted()));
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xff02C7FC),
                    onPrimary: const Color(0xff000000),
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
