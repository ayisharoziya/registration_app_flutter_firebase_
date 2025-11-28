import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<void> register({
  required String username,
  required String Email,
  required String password,
  required String confirmpassword,
  required BuildContext context
}) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: Email, password: password);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("User Added Successfully ")));
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Future<void> loggin({
  
  required String Email,
  required String password,
  
  required BuildContext context
}) async {
  try {
   await FirebaseAuth.instance.signInWithEmailAndPassword(email: Email, password: password);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(" loggin successfully")));

  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}
Future<void> forgot({
  
  required String Email,
  
  
  required BuildContext context
}) async {
  try {
  
  await FirebaseAuth.instance.sendPasswordResetEmail(email: Email);
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("check your inbox")));
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

