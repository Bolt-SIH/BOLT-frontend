import 'package:bolt/file_exported.dart';
import 'package:bolt/screens/CourseOnBoarding/lesson.dart';
import 'package:bolt/screens/games/game_collection.dart';
import 'package:bolt/theme/app_styles.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PointAndRead extends StatefulWidget {
  static const routeName = "PointAndRead";
  const PointAndRead({Key? key}) : super(key: key);

  @override
  State<PointAndRead> createState() => _PointAndReadState();
}

class _PointAndReadState extends State<PointAndRead> {
  List contentList = [];
  String content =
      """There are lots of different ways to make money by investing. Unfortunately, not all of them have a good chance of working out as planned. The following are some of the traits of good investments. An investment does not need to have all these traits, but there should be an acceptable reason for the absence of any one of them. For example, an investment does not need to provide income, if it is expected to grow in value. If it does neither, there is no point owning it.

1. Fairly valued
If you overpay for an investment, you are putting yourself at a disadvantage. Good investments are usually bought at a good price. With equity investing, valuation relative to future growth is key. Market timing may have its limits, but stock valuation plays a big part in determining future returns. Buying at a fair price is not necessarily the same as value investing, but the price should always be reasonable and based on reasonable growth assumptions.

2. Underlying value will increase over time
The best investments are more often than not assets that increase in value over the long term. Whether it’s a company or real estate, this occurs when the asset owns or produces something that is in demand. Company values increase when they reinvest profits to increase capacity. Property values increase because real estate is limited while demand is not. While the stock market as whole has increased in value, the same is not true for all companies.

3.  It diversifies your portfolio or reduces portfolio risk
Any investment you add to your portfolio should be a good investment in its own right, but should also add diversification to the portfolio. For example, if you own an ETF that tracks the S&P 500, there is little point buying another fund that tracks a similar index. A fund tracking a European index, or a global index would offer more diversification. Asset allocation ensures that a portfolio can weather any storm.""";
  int sec = 500;
  int i = 0;
  Timer _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {});

  @override
  void initState() {
    contentList = content.split(" ");
    Start_timer();
    super.initState();
  }

  void Start_timer() {
    _timer = Timer.periodic(Duration(milliseconds: sec), (timer) {
      setState(() {
        if (i < contentList.length - 1 && i > -1) {
          i = i + 1;
        } else {
          isactive = false;

          _timer.cancel();
        }
      });
    });
  }

  void decrease_timer() {
    setState(() {
      if (sec > 2500) {
        isactive = false;
        _timer.cancel();

        sec -= 250;
      } else {
        isactive = false;
        _timer.cancel();

        sec = 250;
      }

      log(sec.toString());
    });
  }

  // ignore: non_constant_identifier_names
  void increase_timer() {
    setState(() {
      if (sec < 10000) {
        isactive = false;
        _timer.cancel();

        sec += 250;
      } else {
        isactive = false;
        _timer.cancel();

        sec = 10000;
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    // TODO: implement dispose
    super.dispose();
  }


  bool isactive = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          iconSize: 25,
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const GameCollections()));
          },
        ),
        backgroundColor: CustomColors.backgroundColor,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.text_increase,
              size: 25,
            ),
            onPressed: () {
              // Navigator.pushReplacement(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => const Landing_Page()));
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.more_vert_outlined,
              size: 25,
            ),
            onPressed: () {
              // Navigator.pushReplacement(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => ));
            },
          ),
        ],
      ),
      body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(children: [
            CustomProgressBar(0.2),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView(
                reverse: true,
                children: [
                  Text(
                    "${contentList.sublist(0, i).join(" ")}",
                    style: const TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 25),
              child: Text(
                "${contentList[i]}",
                style: const TextStyle(
                    color: CustomColors.brightyellow,
                    fontSize: 25,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: ListView(
                children: [
                  Text(
                    "${contentList.sublist(i, contentList.length).join(" ")}",
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            i + 1 == contentList.length
                ? button("Level Up", const LessonCompleted(), context)
                : Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            height: 60,
                            width: 60,
                            child: GestureDetector(
                              onTap: () => increase_timer(),
                              child: const Center(
                                child: Icon(
                                  Icons.fast_rewind,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ),
                            )),
                        GestureDetector(
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100)),
                            child: Center(
                                child: isactive
                                    ? const Icon(
                                        Icons.pause,
                                        color: Colors.black,
                                        size: 30,
                                      )
                                    : const Icon(
                                        Icons.play_arrow,
                                        color: Colors.black,
                                      )),
                          ),
                          onTap: () {
                            if (isactive == true) {
                              _timer.cancel();
                              log(_timer.isActive.toString());
                            } else {
                              log("else Condition");
                              Start_timer();
                            }

                            setState(() {
                              if (contentList.length == i + 1) {
                                i = 0;
                                _timer.cancel();
                                Start_timer();
                              }
                              if (isactive == false) {
                                isactive = true;
                              } else {
                                isactive = false;
                              }
                            });
                          },
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: GestureDetector(
                            onTap: () => decrease_timer(),
                            child: const Center(
                                child: Icon(
                              Icons.fast_forward,
                              color: Colors.white,
                              size: 50,
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
          ])),
    );
  }
}
