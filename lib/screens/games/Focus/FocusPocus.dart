import 'dart:math';
import 'package:bolt/file_exported.dart';
import 'package:bolt/screens/CourseOnBoarding/lesson.dart';
import 'package:bolt/screens/games/Focus/Question.dart';
import 'package:bolt/theme/app_styles.dart';
import 'package:english_words/english_words.dart';

class HocusFocus extends StatefulWidget {
  const HocusFocus({Key? key}) : super(key: key);

  @override
  State<HocusFocus> createState() => _HocusFocusState();
}

class _HocusFocusState extends State<HocusFocus> {
  List<List<dynamic>> values = [
    ["", "", ""],
    ["", "", ""],
    ["", "", ""]
  ];
  int i = 0;
  int j = 0;
  int iprev = 0;
  int jprev = 0;
  Timer timer = Timer(const Duration(seconds: 0), () {});
  @override
  void initState() {
    TextChange();
    super.initState();
  }

  int count = 0;
  void TextChange() async {
    timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      String words = nouns.take(50).toList()[Random().nextInt(50)];
      setState(() {
        if (iprev < 3 && jprev < 3) {
          values[iprev][jprev] = "";
        }
        if (i < 3 && j < 3) {
          values[i][j] = words;
        }
      });

      int de = Random().nextInt(200);
      if (de.isEven && count > Random().nextInt(20)) {
        values[i][j] = "";
        timer.cancel();
        // TODO : Go to the other screen
        // Navigator.pushReplacement(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => (
        //             );
      }
      count++;
      iprev = i;
      jprev = j;
      if (i < 3 && j < 3) {
        if (j < 2) {
          j++;
        } else {
          j = 0;
          i++;
        }
      } else {
        i = 0;
        j = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 17),
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            CustomProgressBar(0.3),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: Center(
                    child: Text(
                      values[0][0],
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: Center(
                      child: Text(
                    values[0][1],
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: Center(
                      child: Text(
                    values[0][2],
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: Center(
                      child: Text(
                    values[1][0],
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: Center(
                      child: Text(
                    values[1][1],
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: Center(
                      child: Text(
                    values[1][2],
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: Center(
                      child: Text(
                    values[2][0],
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: Center(
                      child: Text(
                    values[2][1],
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: Center(
                      child: Text(
                    values[2][2],
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            button("Check", LessonCompleted(), context)
          ],
        ),
      ),
    );
  }
}
