import 'package:bolt/screens/Onboarding/authentication.dart';
import 'package:bolt/screens/Onboarding/gettingstarted.dart';
import 'package:bolt/screens/schulte_table/first_screen.dart';
import 'package:bolt/screens/schulte_table/game_one.dart';
import 'package:bolt/screens/schulte_table/schulte_levelup.dart';
import 'package:bolt/services/google_authentication.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'file_exported.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser;

   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => GoogleSignInProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Colors.black),
          scaffoldBackgroundColor: CustomColors.backgroundColor,
          bottomSheetTheme: const BottomSheetThemeData(modalBackgroundColor: Color.fromARGB(255, 30, 29, 29)),
        ),
        home: const FirstScreen(),
        // const Authentication(),
        routes: {
          GameOne.routeName:(ctx) =>const GameOne(),
          SchulteLevelUp.routeName:(ctx) => SchulteLevelUp(), 
        }
        ,
      ),
    );
  }
}
