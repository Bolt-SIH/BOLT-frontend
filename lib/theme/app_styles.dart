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
        style: TextStyle(fontSize: 20),
      ),
    ),
  );
}
