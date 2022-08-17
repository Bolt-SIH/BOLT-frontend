import 'package:bolt/screens/Onboarding/gettingstarted.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
            return Container();
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
