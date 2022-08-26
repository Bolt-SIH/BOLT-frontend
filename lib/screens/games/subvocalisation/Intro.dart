import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:bolt/file_exported.dart';
import 'package:bolt/screens/CourseOnBoarding/LetsStart.dart';
import 'package:bolt/screens/Learning_Games/learn_start.dart';
import 'package:bolt/screens/games/subvocalisation/SubVocalisationMain.dart';
import 'package:bolt/theme/app_styles.dart';
import 'package:rive/rive.dart';

class Subvocalisation1 extends StatefulWidget {
  static const routeName = "Subvocalisation1";
  const Subvocalisation1({Key? key}) : super(key: key);

  @override
  State<Subvocalisation1> createState() => _Subvocalisation1State();
}

class _Subvocalisation1State extends State<Subvocalisation1> {
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
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                TypewriterAnimatedText("""What is Subvocalisation?
Subvocalization, or silent speech, is the internal speech typically made when reading; it provides the sound of the word as it is read.""",
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
            Subvocalisation2(),
            context,
          )
        ]),
      ),
    );
  }
}

class Subvocalisation2 extends StatefulWidget {
  const Subvocalisation2({Key? key}) : super(key: key);

  @override
  State<Subvocalisation2> createState() => _Subvocalisation2State();
}

class _Subvocalisation2State extends State<Subvocalisation2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => Subvocalisation1()));
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
                      "I’ll help you to lean the art of supressing subvocalisation",
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
          button("Continue", const SubVocalisation3(), context)
        ]),
      ),
    );
  }
}

class SubVocalisation3 extends StatefulWidget {
  const SubVocalisation3({Key? key}) : super(key: key);

  @override
  State<SubVocalisation3> createState() => _SubVocalisation3State();
}

class _SubVocalisation3State extends State<SubVocalisation3> {
  @override
  void initState() {
    music();
    super.initState();
  }

  void music() async {
    final player = AudioPlayer();
    await player.setSource(AssetSource('audio/lalala.aac'));
    player.resume();
  }

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
                    builder: (context) => const Subvocalisation2()));
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
                      "While reading you have to hum with me. Let's try it once",
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
          button("Continue", const SubVocalisationMain(), context)
        ]),
      ),
    );
  }
}
