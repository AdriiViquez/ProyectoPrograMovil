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

Future<DocumentReference?> compareDocumentDtoReferenceIDForCollection(
  String documentID,
  List<DocumentReference> providerReferences,
) async {
  Map<String, DocumentReference> referenceMap = {
    for (var ref in providerReferences) ref.id: ref
  };

  // Use the map for O(1) lookup
  return Future.value(referenceMap[documentID]);
}
