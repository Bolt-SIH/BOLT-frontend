import 'package:bolt/screens/CourseOnBoarding/wpmScreen.dart';
import 'package:bolt/screens/Learning_Games/learn_start.dart';

import '../../file_exported.dart';

class ReadingTest extends StatefulWidget {
  const ReadingTest({Key? key}) : super(key: key);

  @override
  State<ReadingTest> createState() => ReadingTestState();
}

class ReadingTestState extends State<ReadingTest> {
  int timecount = 0;
  Timer timer = Timer.periodic(const Duration(seconds: 1), (timer) {});
  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      timecount++;
      log(timecount.toString());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          iconSize: 25,
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const Landing_Page()));
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
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Landing_Page()));
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.more_vert_outlined,
              size: 25,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Landing_Page()));
            },
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.symmetric(horizontal: 17),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const LinearProgressIndicator(
                  backgroundColor: CustomColors.progressBarBackground,
                  minHeight: 14,
                  value: 0.2,
                  valueColor:
                      AlwaysStoppedAnimation<Color>(CustomColors.brightyellow),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // TODO: To be changed to a preference.
            const Text(
              "Heading",
              style: TextStyle(
                fontSize: 22,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              """NFT means non-fungible tokens (NFTs), which are generally created using the same type of programming used for cryptocurrencies. In simple terms these cryptographic assets are based on blockchain technology. They cannot be exchanged or traded equivalently like other cryptographic assets.\nLike Bitcoin or Ethereum. The term NFT clearly represents it can neither be replaced nor interchanged because it has unique properties. Physical currency and cryptocurrency are fungible, which means that they can be traded or exchanged for one another.
Key Features of NFT - 
Digital Asset - NFT is a digital asset that represents Internet collectibles like art, music, and games with an authentic certificate created by blockchain technology that underlies Cryptocurrency. 
Unique - It cannot be forged or otherwise manipulated. 
Exchange - NFT exchanges take place with cryptocurrencies such as Bitcoin on specialist sites.
NFT means non-fungible tokens (NFTs), which are generally created using the same type of programming used for cryptocurrencies. In simple terms these cryptographic assets are based on blockchain technology. They cannot be exchanged or traded equivalently like other cryptographic assets.\nLike Bitcoin or Ethereum. The term NFT clearly represents it can neither be replaced nor interchanged because it has unique properties. Physical currency and cryptocurrency are fungible, which means that they can be traded or exchanged for one another.
Key Features of NFT - 
Digital Asset - NFT is a digital asset that represents Internet collectibles like art, music, and games with an authentic certificate created by blockchain technology that underlies Cryptocurrency. 
Unique - It cannot be forged or otherwise manipulated. 
Exchange - NFT exchanges take place with cryptocurrencies such as Bitcoin on specialist sites.""",
              style: TextStyle(fontSize: 15, fontFamily: "Montserrat"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(
                onPressed: () {
                  timer.cancel();
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WPMScreen(timecount)));
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xff02C7FC),
                    onPrimary: const Color(0xff000000),
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
