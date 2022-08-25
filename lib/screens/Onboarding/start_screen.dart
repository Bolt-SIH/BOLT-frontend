import 'package:bolt/file_exported.dart';
import 'package:bolt/screens/Learning_Games/learn_start.dart';

// ignore: camel_case_types
class Start_Screen extends StatefulWidget {
  const Start_Screen({Key? key}) : super(key: key);

  @override
  State<Start_Screen> createState() => _Start_ScreenState();
}

// ignore: camel_case_types
class _Start_ScreenState extends State<Start_Screen> {
  int onboard_index = 0;
  final start_content = [
    {
      'image': 'assets/images/drdo_blaze.png',
      'title': 'What this collaboration brings?',
      'desc':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
    },
    {
      'image': 'assets/images/ironman.gif',
      'title': 'How the Course was designed',
      'desc':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor '
    },
    {
      'image': 'assets/images/toggle.gif',
      'title': 'Switch Things!',
      'desc':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor '
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "Bolt ⚡",
            style: TextStyle(fontFamily: 'Montserrat'),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 160, 0, 30),
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                          start_content[onboard_index]['image'].toString())),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(bottom: 10),
              child: Text(
                start_content[onboard_index]['title'].toString(),
                style: const TextStyle(
                    color: CustomColors.brightyellow,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(bottom: 30),
                child: RichText(
                  text: TextSpan(
                    text: start_content[onboard_index]['desc'].toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 15),
                  ),
                )),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(bottom: 20),
              child: FlatButton(
                  height: 50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  onPressed: () {
                    setState(() {
                      if (onboard_index < start_content.length - 1) {
                        onboard_index += 1;
                      } else if (onboard_index == start_content.length - 1) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Landing_Page()));
                      }
                    });
                  },
                  color: const Color(0xffE7C1EA),
                  child: const Text(
                    "Continue",
                    style: TextStyle(fontSize: 18),
                  )),
            ),
          ]),
        ));
  }
}
