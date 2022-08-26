import 'package:bolt/file_exported.dart';
import 'package:bolt/screens/CourseOnBoarding/lesson.dart';
import 'package:bolt/screens/CourseOnBoarding/questions.dart';
import 'package:rive/rive.dart';

// TODO: Work on WPM logic.

class WPMScreen extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const WPMScreen(this.second);
  final int second;

  @override
  State<WPMScreen> createState() => _WPMScreenState();
}

class _WPMScreenState extends State<WPMScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: CustomColors.backgroundColor,
          actions: const [Icon(Icons.more_vert_rounded)]),
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
                        "${(268 / (widget.second / 60)).round()}",
                        // Number of words count = 268
                        style: const TextStyle(
                            fontSize: 100,
                            color: CustomColors.brightyellow,
                            fontFamily: "baloo",
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Words Per Minute.",
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
                  "Did it all bounced of you head?",
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
                  "Often when we read faster we comprimise on Comprehension let’s check if you did.",
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
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Questions()));
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
  }
}
