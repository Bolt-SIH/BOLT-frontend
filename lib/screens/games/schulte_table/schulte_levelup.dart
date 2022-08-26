import 'package:bolt/file_exported.dart';
import 'package:bolt/screens/CourseOnBoarding/lesson.dart';

class SchulteLevelUp extends StatefulWidget {
  static const routeName = '/schulteLevelUp';
  const SchulteLevelUp({Key? key}) : super(key: key);

  @override
  State<SchulteLevelUp> createState() => _SchulteLevelUpState();
}

class _SchulteLevelUpState extends State<SchulteLevelUp> {
  double? progressValue;
  List myCheckNum = [
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25];
  int _index = 0;
  int myIndex = 0;
  List myNum = [
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25
  ];
  List newUserInput = [];
  double countedTime = 0.0;
  double userFinalTime = 0.0;

  Timer? timer;

  @override
  void initState() {
    myNum.shuffle();

    progressValue = 0.0;
    super.initState();
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // print("myIndex == $myIndex");
    // print("myNum[myIndex] == ${myNum[_index]}");
    // print("myCHeck num ==${myCheckNum[myIndex]}");
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
              padding: const EdgeInsets.all(30.0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Schulte Table",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'Baloo',
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    height: 300,
                    width: 300,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 5,
                      ),
                      itemCount: 25,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              if (newUserInput.isEmpty) {
                                timer = Timer.periodic(
                                    const Duration(milliseconds: 1), (_) {
                                  countedTime = countedTime + 1;
                                  // print(timer);
                                });
                              }
                              if (myIndex < myCheckNum.length) {
                                // print(myIndex + 1);
                                // print(myNum[index]);
                                _index = index;

                                if (myIndex + 1 == myNum[index]) {
                                  myIndex += 1;
                                  _index = index;

                                  newUserInput.add(myNum[index]);
                                  if (newUserInput.length == 25) {
                                    if (listEquals(myCheckNum, newUserInput)) {
                                      setState(() {
                                        timer!.cancel();
                                        userFinalTime = countedTime;
                                        countedTime = 0.0;
                                        progressValue = progressValue! + 1 / 3;
                                        newUserInput.clear();
                                        myIndex = 0;
                                      });
                                      // print("pass");
                                      showModalBottomSheet(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          context: context,
                                          builder: (context) {
                                            return (userFinalTime / 1000 <
                                                    50.00)
                                                ? Container(
                                                    height: 270,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(60)),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              20.0),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const SizedBox(
                                                              // padding: EdgeInsets.all(20),
                                                              width: double
                                                                  .infinity,
                                                              child: Text(
                                                                "Hooray 🥳",
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Baloo',
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        25),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                              )),
                                                          const Spacer(),
                                                          Center(
                                                              child: Text(
                                                            '${(userFinalTime / 1000).toStringAsFixed(2)} s',
                                                            style: const TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 42,
                                                                fontFamily:
                                                                    'Baloo2-SemiBold'),
                                                          )),
                                                          const Spacer(),
                                                          Center(
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20),
                                                              child:
                                                                  ElevatedButton(
                                                                style:
                                                                    ButtonStyle(
                                                                  backgroundColor:
                                                                      MaterialStateProperty.all(
                                                                          CustomColors
                                                                              .successbuttonbackground),
                                                                ),
                                                                onPressed: () {
                                                                  setState(() {
                                                                    progressValue =
                                                                        progressValue! +
                                                                            1 / 3;
                                                                            Navigator.pushReplacementNamed(context, LessonCompleted.routeName);
                                                                  });
                                                                },
                                                                child:
                                                                    const SizedBox(
                                                                  width: 300,
                                                                  height: 60,
                                                                  child: Center(
                                                                    child: Text(
                                                                      "Next",
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              30,
                                                                          color: Colors
                                                                              .black,
                                                                          fontFamily:
                                                                              'Baloo'),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                : Container(
                                                    height: 270,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(60)),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              20.0),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const SizedBox(
                                                              // padding: EdgeInsets.all(20),
                                                              width: double
                                                                  .infinity,
                                                              child: Text(
                                                                "You can do better ✨",
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Baloo',
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        25),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                              )),
                                                          const Spacer(),
                                                          Center(
                                                              child: Text(
                                                            '${(userFinalTime / 1000).toStringAsFixed(2)} s',
                                                            style: const TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 42,
                                                                fontFamily:
                                                                    'Baloo2-SemiBold'),
                                                          )),
                                                          const Spacer(),
                                                          Center(
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20),
                                                              child:
                                                                  ElevatedButton(
                                                                style:
                                                                    ButtonStyle(
                                                                  backgroundColor:
                                                                      MaterialStateProperty.all(
                                                                          CustomColors
                                                                              .failbuttonbackground),
                                                                ),
                                                                onPressed: () {
                                                                  setState(() {
                                                                    myNum
                                                                        .shuffle();
                                                                    myIndex = 0;
                                                                    newUserInput
                                                                        .clear();
                                                                    progressValue =
                                                                        progressValue! -
                                                                            1 / 3;
                                                                  });
                                                                  // myNum.shuffle();
                                                                  // newUserInput.clear();

                                                                  // myNum.shuffle();

                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child:
                                                                    const SizedBox(
                                                                  width: 300,
                                                                  height: 60,
                                                                  child: Center(
                                                                    child: Text(
                                                                      "Practice",
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              30,
                                                                          color: Colors
                                                                              .black,
                                                                          fontFamily:
                                                                              'Baloo'),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                          });
                                    } else {
                                      setState(() {
                                        myNum.shuffle();
                                        newUserInput.clear();
                                        myIndex = 0;
                                        progressValue = progressValue! - 1 / 3;
                                      });
                                      // print("keep practise");

                                    }
                                  }
                                  // print(myNum[index]);
                                }
                              }
                            });
                            // print(myIndex);
                          },
                          child: index == 12
                              ? Container(
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.red, width: 4),

                                    // color: Colors,
                                  ),
                                  child: Center(
                                    child: Text(
                                      myNum[index].toString(),
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),

                                    // color: Colors,
                                  ),
                                  child: Center(
                                    child: Text(
                                      myNum[index].toString(),
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    // color: Colors.green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Up next",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Baloo',
                          ),
                          // textAlign: TextAlign.left,
                        ),
                        // IconButton(
                        //   onPressed: () {
                        //     setState(() {
                        //       myNum.shuffle();
                        //       newUserInput.clear();
                        //       myIndex = 0;
                        //     });
                        //   },
                        //   icon: const Icon(
                        //     Icons.refresh,
                        //     color: Colors.white,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  Text(
                    myCheckNum[myIndex].toString(),
                    style: TextStyle(
                      color: (myCheckNum[myIndex] - 1 == myNum[_index])
                          ? Colors.white
                          : CustomColors.failbuttonbackground,
                      fontSize: (myIndex + 1 == myNum[_index]) ? 32 : 36,
                    ),
                  ),
                ],
              ),
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
                      // progressValue = progressValue! + 1 / 3;
                      // print(newUserInput);
                       myNum.shuffle();
                              newUserInput.clear();
                              myIndex = 0;
                    });
                  },
                  child: const SizedBox(
                    width: 300,
                    height: 60,
                    child: Center(
                      child: Text(
                        "Refresh",
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
