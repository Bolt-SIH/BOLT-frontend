import 'dart:io';

import 'package:bolt/enums/api_type.dart';
import 'package:bolt/screens/Learning_Games/learn_start.dart';
import 'package:bolt/screens/Onboarding/gettingstarted.dart';
import 'package:bolt/screens/Onboarding/start_screen.dart';
import 'package:bolt/screens/games/filler/FillerMain.dart';
import 'package:bolt/screens/games/game_collection.dart';
import 'package:bolt/screens/games/subvocalisation/Intro.dart';
import 'package:bolt/screens/games/subvocalisation/SubVocalisationMain.dart';
import 'package:bolt/services/google_authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';
import '../../services/api_request.dart';
import 'package:http/http.dart' as http;

import '../../file_exported.dart';

class Authentication extends StatelessWidget {
  Authentication({Key? key}) : super(key: key);
  final _apiRequest = ApiRequest(baseUrl: "3.110.119.227");

  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
    log("Box read ${box.read("token")}");

    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            log("in waiting stage");
            return const Center(
              child: Text("Hello this is loading"),
            );
            // And check if the user preference has a header tag withing it
          } else if (snapshot.hasData && box.read("token") == null) {
            try {
              final user = FirebaseAuth.instance.currentUser!;
              Map<String, String> query = {
                "first_name": user.displayName!.split(" ")[0],
                "last_name": user.displayName!.split(" ").sublist(1).join(" "),
                "email": "${user.email}",
                "id": user.uid
              };
              Future akash() async {
                http.Response response = await _apiRequest.getResponse(
                    "/auth/registration/", ApiType.post,
                    body: query);

                log(response.statusCode.toString());
                if (response.statusCode >= 200) {
                  log(json.decode(response.body)["token"].toString());
                  box.write('token', json.decode(response.body)["token"]);

                  // Return here to on onboarding screens
                }
                // Added git code
                // Loging in as the user is already SignedUp
                if (response.statusCode == 400) {
                  box.write("onBoarded", true);
                  Map<String, String> query = {
                    "email": "${user.email}",
                  };

                  http.Response response = await _apiRequest.getResponse(
                      "/user/user-check", ApiType.post,
                      body: query);

                  log(json.decode(response.body)["token"]);
                  box.write('token', json.decode(response.body)["token"]);
                }
              }

              akash();
              // Return to the Course Onboarding screen or Course screen.
              if (box.read("onBoarded") == true) {
                return Learn_start();
              } else {
                return const Start_Screen();
              }

              // Return the screen.
            } on SocketException catch (e) {
              log(e.toString());
            }
          } else if (snapshot.hasData && box.read("token") != null) {
            return const Landing_Page();
          } else if (snapshot.hasError) {
            const SnackBar(
              content: Center(
                child: Text("Something went wrong"),
              ),
            );
          }
          final provider =
              Provider.of<GoogleSignInProvider>(context, listen: false);
          provider.logOut();
          return const GettingStarted();
        });
  }
}
