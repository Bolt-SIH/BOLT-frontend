import 'package:bolt/file_exported.dart';
import 'package:bolt/screens/Games/schulte_table/game_intro_screens/first_screen.dart';
import 'package:bolt/screens/Learning_Games/learn_start.dart';
import 'package:bolt/screens/games/ColorGame/colorGameLevel1.dart';
import 'package:bolt/screens/games/Focus/Intro.dart';
import 'package:bolt/screens/games/Peripheral%20Game/peripheral_game.dart';
import 'package:bolt/screens/games/PointAndRead/PointAndReadIntro.dart';
import 'package:bolt/screens/games/PointAndRead/PointAndReadMain.dart';
import 'package:bolt/screens/games/filler/intro.dart';
import 'package:bolt/screens/games/subvocalisation/Intro.dart';
import 'package:bolt/theme/app_styles.dart';

class GameCollections extends StatefulWidget {
  const GameCollections({Key? key}) : super(key: key);

  @override
  State<GameCollections> createState() => _GameCollectionsState();
}

class _GameCollectionsState extends State<GameCollections> {
  int score = 50;
  int myIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const Landing_Page()));
          },
        ),
        title: const Text(
          "Speed Reading",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontFamily: "Baloo",
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              children: const [
                Text(
                  "🔥 30",
                  style: TextStyle(
                      color: Colors.white, fontSize: 22, fontFamily: "Baloo"),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "👑 151",
                  style: TextStyle(
                      color: Colors.white, fontSize: 22, fontFamily: "Baloo"),
                ),
              ],
            ),
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(color: CustomColors.successbuttonbackground),
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              child: Column(children: [
                Image.asset("assets/images/castle.png"),
                RichText(
                  text: const TextSpan(
                      text: "Next Milestone",
                      style: TextStyle(
                        fontFamily: "baloo",
                        // fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      children: [
                        TextSpan(
                            text: " 250 wpm",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: CustomColors.brightyellow,
                            ))
                      ]),
                  // text : "Milestone 250 WPM",
                  // style: TextStyle(
                  //   fontFamily: "baloo",
                  //   fontWeight: FontWeight.bold,
                  //   color: CustomColors.brightyellow,
                  // ),
                ),
                CustomProgressBar(0.4)
              ]),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              // margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 255, 184, 208),
                    minRadius: 36,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, FirstScreen.routeName);
                        },
                        icon: const Icon(Icons.games)),
                  ),
                ),
                const Text("Schulte Table"),
                const SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(255, 8, 135, 225),
                            minRadius: 36,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, PointAndReadIntro.routeName);
                                },
                                icon: const Icon(Icons.read_more)),
                          ),
                        ),
                        const Text("Point & Read")
                      ]),
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(255, 8, 225, 41),
                            minRadius: 36,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, colorConfusionLevel1.routeName);
                                },
                                icon: const Icon(Icons.color_lens)),
                          ),
                        ),
                        const Text("Color Game")
                      ]),
                    ]),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 160, 225, 8),
                      minRadius: 36,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, Peripheral_game.routeName);
                          },
                          icon: const Icon(Icons.color_lens)),
                    ),
                  ),
                  const Text("Peripherial"),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(255, 8, 135, 225),
                              minRadius: 36,
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, fillerMain1.routeName);
                                  },
                                  icon: const Icon(Icons.read_more)),
                            ),
                          ),
                          const Text("Filler Word")
                        ]),
                        Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(255, 225, 8, 120),
                              minRadius: 36,
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, Subvocalisation1.routeName);
                                  },
                                  icon: const Icon(Icons.read_more)),
                            ),
                          ),
                          const Text("SubVocalisation")
                        ]),
                      ]),
                ]),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 160, 225, 8),
                    minRadius: 36,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, FocusMain.routeName);
                        },
                        icon: const Icon(Icons.color_lens)),
                  ),
                ),
                const Text("Focus"),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
