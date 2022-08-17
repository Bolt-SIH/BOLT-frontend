import 'file_exported.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: CustomColors.backgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: Text(
            "Akash Joshi",
            style: TextStyle(
                fontFamily: "Baloo", color: Colors.white, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
