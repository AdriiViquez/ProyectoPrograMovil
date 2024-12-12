// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> createAccount(
    String name,
    String email,
    String fisrtLatName,
    String? secondLastName,
    String phoneNumber,
    String address,
    List<String> roles,
    String status,
    String password,
    String appName) async {
  DateTime createdTime = DateTime.now();

  FirebaseApp app = await Firebase.initializeApp(
      name: appName, options: Firebase.app().options);

  UserCredential userCredential = await FirebaseAuth.instanceFor(app: app)
      .createUserWithEmailAndPassword(email: email, password: password);

  String? uid = userCredential.user?.uid;

  final CollectionReference<Map<String, dynamic>> userRef =
      FirebaseFirestore.instance.collection('users');

  userRef.doc(uid).set({
    'uid': uid,
    'display_name': name,
    'firstLastName': fisrtLatName,
    'secondLastName': secondLastName,
    'phone_number': phoneNumber,
    'status': status,
    'email': email,
    'created_time': createdTime,
    'role': roles,
  });
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
