import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bolt/file_exported.dart';
import 'package:bolt/screens/CourseOnBoarding/LetsStart.dart';
import 'package:bolt/screens/Learning_Games/learn_start.dart';
import 'package:bolt/theme/app_styles.dart';
import 'package:rive/rive.dart';

class fillerMain1 extends StatefulWidget {
  const fillerMain1({Key? key}) : super(key: key);

  @override
  State<fillerMain1> createState() => _fillerMain1State();
}

class _fillerMain1State extends State<fillerMain1> {
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
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.5,
                color: const Color(0xff02C7FC),
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Center(
                  child: AnimatedTextKit(totalRepeatCount: 1, animatedTexts: [
                TypewriterAnimatedText("Hey there! I'm Bolt.",
                    textStyle: const TextStyle(fontSize: 20),
                    speed: const Duration(milliseconds: 80)),
              ])
                  // child: Text(
                  //   'Hi There ! I’m Bolt',
                  //   style: TextStyle(fontSize: 20),
                  // ),
                  ),
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
          button(
            "Continue",
            FillerMain2(),
            context,
          )
        ]),
      ),
    );
  }
}

class FillerMain2 extends StatefulWidget {
  const FillerMain2({Key? key}) : super(key: key);

  @override
  State<FillerMain2> createState() => _FillerMain2State();
}

class _FillerMain2State extends State<FillerMain2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => fillerMain1()));
          },
        ),
        backgroundColor: CustomColors.backgroundColor,
      ),
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Spacer(
            flex: 1,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.5,
                color: const Color(0xff02C7FC),
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                margin: const EdgeInsets.all(10),
                child: AnimatedTextKit(totalRepeatCount: 1, animatedTexts: [
                  TypewriterAnimatedText(
                      "I’ll help you acquire the super power of reading and comprehending faster, but first you have to unlearn the learned.",
                      textStyle: const TextStyle(fontSize: 20),
                      speed: const Duration(milliseconds: 80)),
                ]),
              ),
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
          button("Continue", const FillerMain3(), context)
        ]),
      ),
    );
  }
}

class FillerMain3 extends StatefulWidget {
  const FillerMain3({Key? key}) : super(key: key);

  @override
  State<FillerMain3> createState() => _FillerMain3State();
}

class _FillerMain3State extends State<FillerMain3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const FillerMain2()));
          },
        ),
        backgroundColor: CustomColors.backgroundColor,
      ),
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Spacer(
            flex: 1,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.5,
                color: const Color(0xff02C7FC),
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                margin: EdgeInsets.all(10),
                child: AnimatedTextKit(totalRepeatCount: 1, animatedTexts: [
                  TypewriterAnimatedText(
                      "To read faster, first we need to set the initial mark. Read the following text to mark the initial bench.",
                      textStyle: const TextStyle(fontSize: 20),
                      speed: const Duration(milliseconds: 80)),
                ]),
              ),
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
          button("Continue", const ReadingTest(), context)
        ]),
      ),
    );
  }
}
