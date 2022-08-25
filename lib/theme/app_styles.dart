import 'package:bolt/file_exported.dart';

Widget button(text, screen, context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
    child: ElevatedButton(
      onPressed: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => screen));
      },
      style: ElevatedButton.styleFrom(
          primary: const Color(0xff02C7FC),
          onPrimary: const Color(0xff000000),
          minimumSize: const Size.fromHeight(50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          )),
      child: Text(
        '$text',
        style: const TextStyle(fontSize: 20),
      ),
    ),
  );
}

Widget CustomProgressBar(progress) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 10.0,
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: LinearProgressIndicator(
        backgroundColor: CustomColors.progressBarBackground,
        minHeight: 14,
        value: progress,
        valueColor:
            const AlwaysStoppedAnimation<Color>(CustomColors.brightyellow),
      ),
    ),
  );
}
