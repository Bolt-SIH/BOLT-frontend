import 'package:bolt/file_exported.dart';
import 'dart:math';

import 'package:bolt/screens/games/ColorGame/colorGameLevel2.dart';

const _targetColors = [Colors.orange, Colors.green, Colors.yellow, Colors.blue];
const _textColors = [Colors.blue, Colors.yellow, Colors.green, Colors.orange];
const _colorNames = ['orange', 'green', 'yellow', 'blue'];

enum TargetType { color, number }

class TargetData {
  TargetData({required this.type, required this.index});
  final TargetType type;
  final int index;

  String get text => type == TargetType.color
      ? 'COLOR ${_colorNames[index]}'
      : 'NUMBER $index';
  Color get color => _textColors[index];
}

class GameTimer {
  Timer? _timer;
  ValueNotifier<int> remainingSeconds = ValueNotifier<int>(10);

  void startGame() {
    _timer?.cancel();
    remainingSeconds.value = 15;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      remainingSeconds.value--;
      if (remainingSeconds.value == 0) {
        _timer?.cancel();
      }
    });
  }
}

class colorConfusionLevel1 extends StatefulWidget {
  static const routeName = '/colorConfusionLevel1';
  const colorConfusionLevel1({Key? key}) : super(key: key);

  @override
  State<colorConfusionLevel1> createState() => _colorConfusionLevel1State();
}

class _colorConfusionLevel1State extends State<colorConfusionLevel1> {
  static final _rng = Random();
  late TargetData _targetData;
  int _score = 0;
  bool _gameInProgress = false;
  GameTimer _gameTimer = GameTimer();

  @override
  void initState() {
    super.initState();
    _gameTimer.remainingSeconds.addListener(() {
      if (_gameTimer.remainingSeconds.value == 0) {
        setState(() {
          _gameInProgress = false;
        });
      }
    });
    _randomize();
  }

  void _randomize() {
    _targetData = TargetData(
      type: TargetType.values[_rng.nextInt(2)],
      index: _rng.nextInt(_targetColors.length),
    );
  }

  void _startGame() {
    _randomize();
    setState(() {
      _score = 0;
      _gameInProgress = true;
    });
    _gameTimer.startGame();
  }

  void _handleTapDown(TapDownDetails details, int? selectedIndex) {
    if (!_gameInProgress) {
      return;
    }
    final size = MediaQuery.of(context).size;
    // _randomize();
    setState(() {
      if (selectedIndex != null) {
        // _playerAlignment = _targets[selectedIndex];
        final didScore = selectedIndex == _targetData.index;
        Future.delayed(const Duration(milliseconds: 250), () {
          setState(() {
            if (didScore) {
              _score++;
            } else {
              _score--;
            }
            _randomize();
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Color Confusion Game1",
          style: TextStyle(
              fontFamily: 'Baloo', fontWeight: FontWeight.bold, fontSize: 22),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(children: [
        // Container(
        //   margin:
        //       const EdgeInsets.only(left: 25, right: 25, top: 40, bottom: 40),
        //   height: 12,
        //   child: ClipRRect(
        //     borderRadius: BorderRadius.circular(20),
        //     child: const LinearProgressIndicator(
        //       minHeight: 12,
        //       color: Colors.blue,
        //       backgroundColor: Colors.grey,
        //       // value: _handleTapDown(),
        //     ),
        //   ),
        // ),
        Container(
          // alignment: Alignment(0, 0),
          margin: const EdgeInsets.only(top: 20),
          child: IgnorePointer(
            ignoring: _gameInProgress,
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextPrompt(
                    'Score: $_score',
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Montserrat',
                  ),
                  TextPrompt(
                    _gameInProgress ? 'Tap ${_targetData.text}' : 'Game Over!',
                    color: _gameInProgress ? _targetData.color : Colors.white,
                  ),
                  _gameInProgress
                      ? Container(
                          margin: const EdgeInsets.only(bottom: 10.0),
                          height: 35,
                          child: const Text(
                            "Select the Right Choice",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: const StadiumBorder(),
                              side: const BorderSide(
                                  width: 2, color: Colors.white),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: TextPrompt('Start', color: Colors.white),
                            ),
                            onPressed: _startGame,
                          ),
                        ),
                ],
              ),
            ),
          ),
        ),
        for (var i = 0; i < _targetColors.length; i++)
          GestureDetector(
            // Handle taps on targets
            onTapDown: (details) => _handleTapDown(details, i),
            // TO DO: Convert to AnimatedAlign & add a duration argument
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                child: Target(
                  color: _targetColors[i],
                  textColor: _textColors[i],
                  text: i.toString(),
                ),
              ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: const StadiumBorder(),
              side: const BorderSide(width: 2, color: Colors.white),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextPrompt('Next Level', color: Colors.white),
            ),
            onPressed: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GameWidget()));
              });
            },
          ),
        ),
      ]),
    );
  }
}

class Target extends StatelessWidget {
  const Target({
    Key? key,
    required this.color,
    required this.textColor,
    required this.text,
  }) : super(key: key);
  final Color color;
  final Color textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(
          color: color,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(12)),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ),
    );
  }
}

class TextPrompt extends StatelessWidget {
  const TextPrompt(
    this.text, {
    Key? key,
    required this.color,
    this.fontSize = 32,
    this.fontFamily: 'Montserrat',
  }) : super(key: key);
  final String text;
  final Color color;
  final double fontSize;
  final String fontFamily;

  @override
  Widget build(BuildContext context) {
    return AnimatedDefaultTextStyle(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
        ),
      ),
      duration: const Duration(milliseconds: 250),
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        fontFamily: fontFamily,
        shadows: const [
          Shadow(
            blurRadius: 4.0,
            color: Colors.grey,
            offset: Offset(0.0, 2.0),
          ),
        ],
      ),
    );
  }
}
