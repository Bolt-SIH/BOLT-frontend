import 'package:bolt/file_exported.dart';
import 'package:bolt/screens/Games/schulte_table/game_intro_screens/first_screen.dart';

class GameCollections extends StatefulWidget {
  const GameCollections({Key? key}) : super(key: key);

  @override
  State<GameCollections> createState() => _GameCollectionsState();
}

class _GameCollectionsState extends State<GameCollections> {
  int myIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 70,
            width: double.infinity,
          ),
          Container(
            height: 150,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(color: CustomColors.successbuttonbackground),
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            child: const Center(
                child: Text(
              "Unit 1",
              style: TextStyle(color: Colors.white),
            )),
          ),
          const SizedBox(
            height: 40,
          ),
          Column(children: [
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
            const Text("Schulte Table")
          ]),
        ],
      ),
    );
  }
}
