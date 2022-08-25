import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bolt/file_exported.dart';
import 'package:bolt/screens/games/schulte_table/game_intro_screens/third_screen.dart';

class SecondScreen extends StatefulWidget {
  static const routeName = "secondScreen";
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  double? progressValue;
  int index = 1;
  List textContaint = [
    "While we read there are two main elements involved eyesight and brain.Let’s target your eyes in this game_",
    "Presenting Schulte table is a great exercise to improve your peripheralvision , attention and speed reading_",
    "Let's start"
  ];
  @override
  void initState() {
    // index = 0;
    progressValue = 0.6;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("first"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.blueGrey,
                  minHeight: 14,
                  value: progressValue,
                  valueColor:
                      const AlwaysStoppedAnimation<Color>(Colors.orange),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 40, horizontal: 30.0),
              child: Container(
                height: 140,
                width: double.infinity,
                // color: Colors.grey,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: CustomColors.successbuttonbackground),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  // color: Colors.grey,
                ),
                child:
                 Padding(
                    padding: const EdgeInsets.all(20.0),
                    child:
                    AnimatedTextKit(isRepeatingAnimation: false,
                      animatedTexts: 
                    
                    [TypewriterAnimatedText(
                      
                      textContaint[index],
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      
                      speed:  const Duration(milliseconds: 20),
                    ),]

                    
                    ) 
                    // Text(
                    //   textContaint[index],
                    //   style: const TextStyle(color: Colors.white,fontSize: 18,fontFamily: 'Montsserrat'),
                    // ),
                    ),
              ),
            ),
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset('assets/images/Eye.gif'),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        CustomColors.successbuttonbackground),
                  ),
                  onPressed: () {
                    setState(() {
                      // if (index < textContaint.length - 1) {
                      //   index = index + 1;
                      // }
                      // progressValue = progressValue! + 1 / 3;
                      // if (progressValue! > 1) {
                      //   Navigator.of(context).pushNamed(GameOne.routeName);
                      // }
                      Navigator.pushReplacementNamed(context, ThirdScreen.routeName);
                    });
                  },
                  child: const SizedBox(
                    width: 300,
                    height: 60,
                    child: Center(
                      child: Text(
                        "Continue",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontFamily: 'Baloo2'),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
