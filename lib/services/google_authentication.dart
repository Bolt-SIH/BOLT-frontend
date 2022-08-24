import 'dart:developer';

import 'package:bolt/file_exported.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

import '../enums/api_type.dart';
import 'api_request.dart';
import 'dart:io';

class GoogleSignInProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();

  GoogleSignInAccount? _user;

  GoogleSignInAccount get user => _user!;

  Future googleLogin() async {
    try {
      final _apiRequest = ApiRequest(baseUrl: "3.110.119.227");

      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) return;
      _user = googleUser;

      final googleAuth = await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
      log("Google Authentication ${_user}");

      notifyListeners();
    } catch (e) {
      log(e.toString());
    }
  }

  Future logOut() async {
    await googleSignIn.disconnect();
    FirebaseAuth.instance.signOut();
  }
}
