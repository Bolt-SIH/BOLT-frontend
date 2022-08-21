import 'package:bolt/screens/Onboarding/gettingstarted.dart';
import 'package:bolt/services/google_authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../file_exported.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool onboarded = true;
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasData & onboarded) {
            return Center(
              child: TextButton(
                onPressed: () {
                  final provider =
                      Provider.of<GoogleSignInProvider>(context, listen: false);
                  provider.logOut();
                },
                child: const Text("Logout"),
              ),
            );
          } else if (snapshot.hasData) {
            return Container();
          } else if (snapshot.hasError) {
            const SnackBar(
              content: Center(
                child: Text("Something went wrong"),
              ),
            );
          }

          return const GettingStarted();
        });
  }
}
