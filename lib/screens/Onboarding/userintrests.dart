import 'package:bolt/file_exported.dart';
import 'package:bolt/screens/Learning_Games/learn_start.dart';
import 'package:bolt/theme/app_styles.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

List UserIntrests = [];

class userIntrests extends StatefulWidget {
  userIntrests({Key? key}) : super(key: key);

  int index = 0;
  @override
  State<userIntrests> createState() => _userIntrestsState();
}

class _userIntrestsState extends State<userIntrests> {
  @override
  Widget build(BuildContext context) {
    bool value = false;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "Bolt ⚡",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 17),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(fontSize: 25),
                    children: [
                      TextSpan(
                        text: "Topics that",
                      ),
                      TextSpan(
                        text: " excites",
                        style: TextStyle(color: CustomColors.brightyellow),
                      ),
                      TextSpan(
                        text: " you",
                      )
                    ],
                  )),
            ),
            // Container
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                // padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Wrap(
                        spacing: 5.0,
                        runSpacing: 5.0,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: filterChipWidget(
                              index: 0,
                              chipName: 'Entrepreneurship',
                              key: UniqueKey(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 2),
                            child: filterChipWidget(
                              index: 1,
                              chipName: 'Sports',
                              key: UniqueKey(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 2,
                            ),
                            child: filterChipWidget(
                              index: 2,
                              chipName: 'Science & Technology',
                              key: UniqueKey(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 8,
                            ),
                            child: filterChipWidget(
                              index: 3,
                              chipName: 'Art & Culture',
                              key: UniqueKey(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 2,
                            ),
                            child: filterChipWidget(
                              index: 4,
                              chipName: 'Holidays & Travels',
                              key: UniqueKey(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 2,
                            ),
                            child: filterChipWidget(
                              index: 5,
                              chipName: 'Finance & Investment',
                              key: UniqueKey(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 2,
                            ),
                            child: filterChipWidget(
                              index: 6,
                              chipName: 'Women Empowerment',
                              key: UniqueKey(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 2),
                            child: filterChipWidget(
                              index: 7,
                              chipName: 'Life learning',
                              key: UniqueKey(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 2,
                            ),
                            child: filterChipWidget(
                              index: 8,
                              chipName: 'Environmental Conservation',
                              key: UniqueKey(),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 2, right: 10),
                            child: filterChipWidget(
                              index: 9,
                              chipName: 'Psychology',
                              key: UniqueKey(),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 2, right: 10),
                            child: filterChipWidget(
                              index: 10,
                              chipName: 'Wildlife conservation',
                              key: UniqueKey(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 2,
                            ),
                            child: filterChipWidget(
                              index: 11,
                              chipName: 'Law & Order',
                              key: UniqueKey(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 2,
                            ),
                            child: filterChipWidget(
                              index: 12,
                              chipName: 'Spirituality',
                              key: UniqueKey(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            button("Continue", const Landing_Page(), context)
          ],
        ),
      ),
    );
  }
}

class filterChipWidget extends StatefulWidget {
  final String chipName;

  int index = 0;

  filterChipWidget(
      {required Key key, required this.chipName, required this.index})
      : super(key: key);

  @override
  State<filterChipWidget> createState() => _filterChipWidgetState();
}

class _filterChipWidgetState extends State<filterChipWidget> {
  var _isselected = false;
  Color interestText = Colors.black;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(
        widget.chipName,
        style: TextStyle(fontSize: 25),
      ),
      labelStyle: TextStyle(
          color: _isselected ? interestText : Colors.grey,
          fontSize: 16.0,
          fontWeight: FontWeight.bold),
      selected: _isselected,
      onSelected: (isselected) {
        setState(() {
          _isselected = isselected;

          if (isselected) {
            UserIntrests.add(widget.chipName);
          } else {
            UserIntrests.remove(widget.chipName);
          }

          log(UserIntrests.toString());

          //  addtothe
        });
      },
      selectedColor: CustomColors.successbuttonbackground,
      backgroundColor: CustomColors.buttoncolor,
      showCheckmark: false,
    );
  }
}
