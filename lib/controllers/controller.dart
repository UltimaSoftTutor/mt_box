import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Controller extends ChangeNotifier {
  // static Controller controller = Controller._internal();

  // Controller._internal();

  // factory Controller() {
  //   return controller;
  // }

  late FirebaseAuth auth;
  late UserCredential? user;

  late TextEditingController mobileInputController;
  String input = '';
  String smsCode = '';

  //constructor ..............................................................

  Controller() {
    mobileInputController = TextEditingController();
    auth = FirebaseAuth.instance;
    user = null;
    //String? verificationID ;
  }

  String get mobileValue => input;

  updateInput(String text) {
    input = text;
    notifyListeners();
  }

  Future verifyPhoneNumber(String phoneNumber) async {
    await auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential);
        },
        verificationFailed: (FirebaseAuthException exception) {
          debugPrint(exception.toString());
        },
        codeSent: (String verificationId, int? resendToken) async {
          PhoneAuthCredential credential = PhoneAuthProvider.credential(
              verificationId: verificationId, smsCode: smsCode);
          await auth.signInWithCredential(credential);
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          const Duration(seconds: 30);
        });
    notifyListeners();
  }
}
