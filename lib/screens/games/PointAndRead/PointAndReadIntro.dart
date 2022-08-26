import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bolt/file_exported.dart';
import 'package:bolt/screens/Learning_Games/learn_start.dart';
import 'package:bolt/screens/games/PointAndRead/PointAndReadMain.dart';
import 'package:bolt/theme/app_styles.dart';

class PointAndReadIntro extends StatefulWidget {
  static const routeName = "PointAndReadIntro";
  const PointAndReadIntro({Key? key}) : super(key: key);

  @override
  State<PointAndReadIntro> createState() => _PointAndReadIntroState();
}

class _PointAndReadIntroState extends State<PointAndReadIntro> {
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
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            children: [
              CustomProgressBar(0.2),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 30.0),
                child: Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.grey,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: CustomColors.successbuttonbackground),
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    // color: Colors.grey,
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: AnimatedTextKit(
                          isRepeatingAnimation: false,
                          animatedTexts: [
                            TypewriterAnimatedText(
                              "While we read there are two main elements involved eyesight and brain.Let’s target your eyes in this game",
                              textStyle: const TextStyle(
                                fontSize: 18,
                              ),
                              speed: const Duration(milliseconds: 20),
                            ),
                          ])),
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset('assets/images/pointandread.gif'),
              ),
              const Spacer(),
              button("Continue", const PointAndReadIntro2(), context)
            ],
          ),
        ),
      ),
    );
  }
}

class PointAndReadIntro2 extends StatefulWidget {
  const PointAndReadIntro2({Key? key}) : super(key: key);

  @override
  State<PointAndReadIntro2> createState() => _PointAndReadIntro2State();
}

class _PointAndReadIntro2State extends State<PointAndReadIntro2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => PointAndReadIntro()));
          },
        ),
        backgroundColor: CustomColors.backgroundColor,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            children: [
              CustomProgressBar(0.6),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 30.0),
                child: Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.grey,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: CustomColors.successbuttonbackground),
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    // color: Colors.grey,
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: AnimatedTextKit(
                          isRepeatingAnimation: false,
                          animatedTexts: [
                            TypewriterAnimatedText(
                              "Presenting Schulte table is a great app to improve your peripheral vision , attention and speed reading_",
                              textStyle: const TextStyle(
                                fontSize: 18,
                              ),
                              speed: const Duration(milliseconds: 20),
                            ),
                          ])),
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset('assets/images/pointandread.gif'),
              ),
              const Spacer(),
              button("Continue", const PointAndReadIntro3(), context)
            ],
          ),
        ),
      ),
    );
  }
}

class PointAndReadIntro3 extends StatefulWidget {
  const PointAndReadIntro3({Key? key}) : super(key: key);

  @override
  State<PointAndReadIntro3> createState() => _PointAndReadIntro3State();
}

class _PointAndReadIntro3State extends State<PointAndReadIntro3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const PointAndReadIntro2()));
          },
        ),
        backgroundColor: CustomColors.backgroundColor,
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            children: [
              CustomProgressBar(1.0),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 30.0),
                child: Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.grey,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: CustomColors.successbuttonbackground),
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    // color: Colors.grey,
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: AnimatedTextKit(
                          isRepeatingAnimation: false,
                          animatedTexts: [
                            TypewriterAnimatedText(
                              "Lets Go with level 1",
                              textStyle: const TextStyle(
                                fontSize: 18,
                              ),
                              speed: const Duration(milliseconds: 20),
                            ),
                          ])),
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset('assets/images/pointandread.gif'),
              ),
              const Spacer(),
              button("Continue", const PointAndRead(), context)
            ],
          ),
        ),
      ),
    );
  }
}
