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

Future removeImageAtIndex(
  List<String> imagesList,
  int indexToRemove,
) async {
  // Add your function code here!
  if (indexToRemove < 0 || indexToRemove >= imagesList.length) {
    throw Exception('Index out of range');
  }
  imagesList.removeAt(indexToRemove);
  return imagesList;
}
