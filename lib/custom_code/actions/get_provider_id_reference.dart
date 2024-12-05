// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future<DocumentReference> getProviderIdReference(String? docID) async {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  String documentPath = "/provider/" + "$docID"; //collecton you want to query
  DocumentReference documentReference = firestore.doc(documentPath);
  return documentReference;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
