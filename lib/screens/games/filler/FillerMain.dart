import 'package:bolt/file_exported.dart';
import 'package:bolt/screens/CourseOnBoarding/lesson.dart';
import 'package:bolt/screens/games/game_collection.dart';
import 'package:bolt/theme/app_styles.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FillerMain extends StatefulWidget {
  const FillerMain({Key? key}) : super(key: key);

  @override
  State<FillerMain> createState() => _FillerMainState();
}

class _FillerMainState extends State<FillerMain> {
  String data =
      """There are lots of different ways to make money by investing. Unfortunately, not all of them have a good chance of working out as planned. The following are some of the traits of good investments. An investment does not need to have all these traits, but there should be an acceptable reason for the absence of any one of them. For example, an investment does not need to provide income, if it is expected to grow in value. If it does neither, there is no point owning it.

1. Fairly valued
If you overpay for an investment, you are putting yourself at a disadvantage. Good investments are usually bought at a good price. With equity investing, valuation relative to future growth is key. Market timing may have its limits, but stock valuation plays a big part in determining future returns. Buying at a fair price is not necessarily the same as value investing, but the price should always be reasonable and based on reasonable growth assumptions.

2. Underlying value will increase over time
The best investments are more often than not assets that increase in value over the long term. Whether it’s a company or real estate, this occurs when the asset owns or produces something that is in demand. Company values increase when they reinvest profits to increase capacity. Property values increase because real estate is limited while demand is not. While the stock market as whole has increased in value, the same is not true for all companies.

3.  It diversifies your portfolio or reduces portfolio risk
Any investment you add to your portfolio should be a good investment in its own right, but should also add diversification to the portfolio. For example, if you own an ETF that tracks the S&P 500, there is little point buying another fund that tracks a similar index. A fund tracking a European index, or a global index would offer more diversification. Asset allocation ensures that a portfolio can weather any storm.""";

  List<String> fillerwordsList = ["of", "and", "is", "Um", "a", "the", "or"];
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
              //         builder: (context) => const Landing_Page()));
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 17),
          child: ListView(physics: const BouncingScrollPhysics(), children: [
            CustomProgressBar(0.5),
            const SizedBox(
              height: 20,
            ),
            SelectableText.rich(
              TextSpan(
                  text: '',
                  style:
                      const TextStyle(fontSize: 17, fontFamily: "Montserrat"),
                  children: data.split(' ').map<InlineSpan>((word) {
                    return fillerwordsList.contains(word) && word.length > 1
                        ? TextSpan(
                            text: ' $word',
                            style: TextStyle(
                              color: Colors.grey[700],
                            ),
                          )
                        : TextSpan(text: ' $word');
                  }).toList()),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            button("LevelUp", const LessonCompleted(), context)
          ]),
        ),
      ),
    );
  }
}
