import 'dart:async';

import 'package:flutter/material.dart';

class PointReadOne extends StatefulWidget {
  const PointReadOne({Key? key}) : super(key: key);

  @override
  _PointReadOneState createState() => _PointReadOneState();
}

class _PointReadOneState extends State<PointReadOne> {
  final _normalStyle = const TextStyle(
    fontFamily: 'Baloo',
    color: Colors.white,
    fontSize: 24,
  );
  final _redStyle = const TextStyle(
    fontFamily: 'Baloo',
    color: Colors.red,
    fontSize: 24,
  );

  int sec = 500;

  void increase_speed() {
    setState(() {
      if (sec > 250) {
        isactive = false;
        _timer.cancel();
        redIndex = 0;
        sec -= 250;
      } else {
        isactive = false;
        _timer.cancel();
        redIndex = 0;
        sec = 250;
      }
    });
  }

  void decrease_speed() {
    setState(() {
      if (sec < 750) {
        isactive = false;
        _timer.cancel();
        redIndex = 0;
        sec += 250;
      } else {
        isactive = false;
        _timer.cancel();
        redIndex = 0;
        sec = 750;
      }
    });
  }

  void Start_timer() {
    _timer = Timer.periodic(Duration(milliseconds: sec), (timer) {
      setState(() {
        if (redIndex < 138 && redIndex > -1) {
          redIndex = redIndex + 1;
        } else {
          isactive = false;

          _timer.cancel();
        }
      });
    });
  }

  int redIndex = 0;

  Timer _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {});
  bool isactive = false;

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String s =
        'What is NFT? NFT means non-fungible tokens (NFTs), which are generally created using the same type of programming used for cryptocurrencies. In simple terms these cryptographic assets are based on blockchain technology. They cannot be exchanged or traded equivalently like other cryptographic assets. Like Bitcoin or Ethereum. The term NFT clearly represents it can neither be replaced nor interchanged because it has unique properties. Physical currency and cryptocurrency are fungible, which means that they can be traded or exchanged for one another. Key Features of NFT - Digital Asset - NFT is a digital asset that represents Internet collectibles like art, music, and games with an authentic certificate created by blockchain technology that underlies Cryptocurrency. Unique - It cannot be forged or otherwise manipulated. Exchange - NFT exchanges take place with cryptocurrencies such as Bitcoin on specialist sites.';

    List<String> myText = s.split(' ');

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 610,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text.rich(
                        TextSpan(children: [
                          TextSpan(
                            text: '${myText[0]} ',
                            style: redIndex == 0 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[1]} ',
                            style: redIndex == 1 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[2]} ',
                            style: redIndex == 2 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[3]} ',
                            style: redIndex == 3 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[4]} ',
                            style: redIndex == 4 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[5]} ',
                            style: redIndex == 5 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[6]} ',
                            style: redIndex == 6 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[7]} ',
                            style: redIndex == 7 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[8]} ',
                            style: redIndex == 8 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[9]} ',
                            style: redIndex == 9 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[10]} ',
                            style: redIndex == 10 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[11]} ',
                            style: redIndex == 11 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[12]} ',
                            style: redIndex == 12 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[13]} ',
                            style: redIndex == 13 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[14]} ',
                            style: redIndex == 14 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[15]} ',
                            style: redIndex == 15 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[16]} ',
                            style: redIndex == 16 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[17]} ',
                            style: redIndex == 17 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[18]} ',
                            style: redIndex == 18 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[19]} ',
                            style: redIndex == 19 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[20]} ',
                            style: redIndex == 20 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[21]} ',
                            style: redIndex == 21 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[22]} ',
                            style: redIndex == 22 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[23]} ',
                            style: redIndex == 23 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[24]} ',
                            style: redIndex == 24 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[25]} ',
                            style: redIndex == 25 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[26]} ',
                            style: redIndex == 26 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[27]} ',
                            style: redIndex == 27 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[28]} ',
                            style: redIndex == 28 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[29]} ',
                            style: redIndex == 29 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[30]} ',
                            style: redIndex == 30 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[31]} ',
                            style: redIndex == 31 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[32]} ',
                            style: redIndex == 32 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[33]} ',
                            style: redIndex == 33 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[34]} ',
                            style: redIndex == 34 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[35]} ',
                            style: redIndex == 35 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[36]} ',
                            style: redIndex == 36 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[37]} ',
                            style: redIndex == 37 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[38]} ',
                            style: redIndex == 38 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[39]} ',
                            style: redIndex == 39 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[40]} ',
                            style: redIndex == 40 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[41]} ',
                            style: redIndex == 41 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[42]} ',
                            style: redIndex == 42 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[43]} ',
                            style: redIndex == 43 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[44]} ',
                            style: redIndex == 44 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[45]} ',
                            style: redIndex == 45 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[46]} ',
                            style: redIndex == 46 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[47]} ',
                            style: redIndex == 47 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[48]} ',
                            style: redIndex == 48 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[49]} ',
                            style: redIndex == 49 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[50]} ',
                            style: redIndex == 50 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[51]} ',
                            style: redIndex == 51 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[52]} ',
                            style: redIndex == 52 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[53]} ',
                            style: redIndex == 53 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[54]} ',
                            style: redIndex == 54 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[55]} ',
                            style: redIndex == 55 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[56]} ',
                            style: redIndex == 56 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[57]} ',
                            style: redIndex == 57 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[58]} ',
                            style: redIndex == 58 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[59]} ',
                            style: redIndex == 59 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[60]} ',
                            style: redIndex == 60 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[61]} ',
                            style: redIndex == 61 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[62]} ',
                            style: redIndex == 62 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[63]} ',
                            style: redIndex == 63 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[64]} ',
                            style: redIndex == 64 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[65]} ',
                            style: redIndex == 65 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[66]} ',
                            style: redIndex == 66 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[67]} ',
                            style: redIndex == 67 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[68]} ',
                            style: redIndex == 68 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[69]} ',
                            style: redIndex == 69 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[70]} ',
                            style: redIndex == 70 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[71]} ',
                            style: redIndex == 71 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[72]} ',
                            style: redIndex == 72 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[73]} ',
                            style: redIndex == 73 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[74]} ',
                            style: redIndex == 74 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[75]} ',
                            style: redIndex == 75 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[76]} ',
                            style: redIndex == 76 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[77]} ',
                            style: redIndex == 77 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[78]} ',
                            style: redIndex == 78 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[79]} ',
                            style: redIndex == 79 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[80]} ',
                            style: redIndex == 80 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[81]} ',
                            style: redIndex == 81 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[82]} ',
                            style: redIndex == 82 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[83]} ',
                            style: redIndex == 83 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[84]} ',
                            style: redIndex == 84 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[85]} ',
                            style: redIndex == 85 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[86]} ',
                            style: redIndex == 86 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[87]} ',
                            style: redIndex == 87 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[88]} ',
                            style: redIndex == 88 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[89]} ',
                            style: redIndex == 89 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[90]} ',
                            style: redIndex == 90 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[91]} ',
                            style: redIndex == 91 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[92]} ',
                            style: redIndex == 92 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[93]} ',
                            style: redIndex == 93 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[94]} ',
                            style: redIndex == 94 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[95]} ',
                            style: redIndex == 95 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[96]} ',
                            style: redIndex == 96 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[97]} ',
                            style: redIndex == 97 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[98]} ',
                            style: redIndex == 98 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[99]} ',
                            style: redIndex == 99 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[100]} ',
                            style: redIndex == 100 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[101]} ',
                            style: redIndex == 101 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[102]} ',
                            style: redIndex == 102 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[103]} ',
                            style: redIndex == 103 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[104]} ',
                            style: redIndex == 104 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[105]} ',
                            style: redIndex == 105 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[106]} ',
                            style: redIndex == 106 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[107]} ',
                            style: redIndex == 107 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[108]} ',
                            style: redIndex == 108 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[109]} ',
                            style: redIndex == 109 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[110]} ',
                            style: redIndex == 110 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[111]} ',
                            style: redIndex == 111 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[112]} ',
                            style: redIndex == 112 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[113]} ',
                            style: redIndex == 113 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[114]} ',
                            style: redIndex == 114 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[115]} ',
                            style: redIndex == 115 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[116]} ',
                            style: redIndex == 116 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[117]} ',
                            style: redIndex == 117 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[118]} ',
                            style: redIndex == 118 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[119]} ',
                            style: redIndex == 119 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[120]} ',
                            style: redIndex == 120 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[121]} ',
                            style: redIndex == 121 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[122]} ',
                            style: redIndex == 122 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[123]} ',
                            style: redIndex == 123 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[124]} ',
                            style: redIndex == 124 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[125]} ',
                            style: redIndex == 125 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[126]} ',
                            style: redIndex == 126 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[127]} ',
                            style: redIndex == 127 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[128]} ',
                            style: redIndex == 128 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[129]} ',
                            style: redIndex == 129 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[130]} ',
                            style: redIndex == 130 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[131]} ',
                            style: redIndex == 131 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[132]} ',
                            style: redIndex == 132 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[133]} ',
                            style: redIndex == 133 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[134]} ',
                            style: redIndex == 134 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[135]} ',
                            style: redIndex == 135 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[136]} ',
                            style: redIndex == 136 ? _redStyle : _normalStyle,
                          ),
                          TextSpan(
                            text: '${myText[137]} ',
                            style: redIndex == 137 ? _redStyle : _normalStyle,
                          ),
                          // TextSpan(
                          //   text: '${myText[138]} ',
                          //   style: redIndex == 138 ? _redStyle : _normalStyle,
                          // ),
                          // TextSpan(
                          //   text: '${myText[139]} ',
                          //   style: redIndex == 139 ? _redStyle : _normalStyle,
                          // ),TextSpan(
                          //   text: '${myText[140]} ',
                          //   style: redIndex == 140 ? _redStyle : _normalStyle,
                          // ),
                          // TextSpan(
                          //   text: '${myText[141]} ',
                          //   style: redIndex == 141 ? _redStyle : _normalStyle,
                          // ),TextSpan(
                          //   text: '${myText[142]} ',
                          //   style: redIndex == 142 ? _redStyle : _normalStyle,
                          // ),TextSpan(
                          //   text: '${myText[143]} ',
                          //   style: redIndex == 143? _redStyle : _normalStyle,
                          // ),TextSpan(
                          //   text: '${myText[144]} ',
                          //   style: redIndex == 144 ? _redStyle : _normalStyle,
                          // ),TextSpan(
                          //   text: '${myText[145]} ',
                          //   style: redIndex == 145 ? _redStyle : _normalStyle,
                          // ),
                          // TextSpan(
                          //   text: '${myText[146]} ',
                          //   style: redIndex == 146 ? _redStyle : _normalStyle,
                          // ),TextSpan(
                          //   text: '${myText[147]} ',
                          //   style: redIndex == 147 ? _redStyle : _normalStyle,
                          // ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {
                        decrease_speed();
                      },
                      icon: const Icon(
                        Icons.fast_rewind,
                        color: Colors.white,
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
                      } else {
                        Start_timer();
                      }

                      setState(() {
                        if (137 == redIndex) {
                          redIndex = 0;
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
                  // IconButton(
                  //     onPressed: () {
                  //       if (isactive == true) {
                  //         _timer.cancel();
                  //       } else {
                  //         Start_timer();
                  //       }

                  //       setState(() {
                  //         if (137 == redIndex) {
                  //           redIndex = 0;
                  //           _timer.cancel();
                  //           Start_timer();
                  //         }
                  //         if (isactive == false) {
                  //           isactive = true;
                  //         } else {
                  //           isactive = false;
                  //         }
                  //       });
                  //     },
                  //     icon: isactive
                  //         ? const Icon(
                  //             Icons.pause,
                  //             color: Colors.white,
                  //             size: 40,
                  //           )
                  //         : const Icon(
                  //             Icons.play_arrow,
                  //             color: Colors.white,
                  //             size: 40,
                  //           )),
                  IconButton(
                      onPressed: () {
                        increase_speed();
                      },
                      icon: const Icon(
                        Icons.fast_forward,
                        color: Colors.white,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
