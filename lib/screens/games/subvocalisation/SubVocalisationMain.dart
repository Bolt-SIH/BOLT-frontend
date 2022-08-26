import 'package:audioplayers/audioplayers.dart';
import 'package:bolt/file_exported.dart';
import 'package:bolt/screens/CourseOnBoarding/lesson.dart';
import 'package:bolt/theme/app_styles.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SubVocalisationMain extends StatefulWidget {
  const SubVocalisationMain({Key? key}) : super(key: key);

  @override
  State<SubVocalisationMain> createState() => _SubVocalisationMainState();
}

class _SubVocalisationMainState extends State<SubVocalisationMain> {
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

  String content =
      """NFT means non-fungible tokens (NFTs), which are generally created using the same type of programming used for cryptocurrencies. In simple terms these cryptographic assets are based on blockchain technology. They cannot be exchanged or traded equivalently like other cryptographic assets.\nLike Bitcoin or Ethereum. The term NFT clearly represents it can neither be replaced nor interchanged because it has unique properties. Physical currency and cryptocurrency are fungible, which means that they can be traded or exchanged for one another.
Key Features of NFT - 
Digital Asset - NFT is a digital asset that represents Internet collectibles like art, music, and games with an authentic certificate created by blockchain technology that underlies Cryptocurrency. 
Unique - It cannot be forged or otherwise manipulated. 
Exchange - NFT exchanges take place with cryptocurrencies such as Bitcoin on specialist sites.
NFT means non-fungible tokens (NFTs), which are generally created using the same type of programming used for cryptocurrencies. In simple terms these cryptographic assets are based on blockchain technology. They cannot be exchanged or traded equivalently like other cryptographic assets.\nLike Bitcoin or Ethereum. The term NFT clearly represents it can neither be replaced nor interchanged because it has unique properties. Physical currency and cryptocurrency are fungible, which means that they can be traded or exchanged for one another.
Key Features of NFT - 
Digital Asset - NFT is a digital asset that represents Internet collectibles like art, music, and games with an authentic certificate created by blockchain technology that underlies Cryptocurrency. 
Unique - It cannot be forged or otherwise manipulated. 
Exchange - NFT exchanges take place with cryptocurrencies such as Bitcoin on specialist sites.""";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 17),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            CustomProgressBar(0.4),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "What is NFT?",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 20,
            ),
            Text(content),
            button("Mark as Completed", const LessonCompleted(), context)
          ],
        ),
      ),
    );
  }
}
