import 'package:bolt/file_exported.dart';

class UserAge extends StatefulWidget {
  const UserAge({Key? key}) : super(key: key);

  @override
  State<UserAge> createState() => _UserAgeState();
}

class _UserAgeState extends State<UserAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.9,
                )
              ],
            ),
            Row(
              children: [
                RichText(
                    text: const TextSpan(
                        text: "age",
                        style: TextStyle(color: CustomColors.brightyellow),
                        children: [TextSpan(text: "What's your")]))
              ],
            ),
            Row(),
            Row(),
            Row(),
          ],
        ),
      ),
    );
  }
}
