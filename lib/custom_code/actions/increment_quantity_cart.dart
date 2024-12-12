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

Future<int> incrementQuantityCart(
    int currentQuantity, int productQuantity) async {
  // Verificar si la cantidad nueva excede la cantidad disponible
  if (currentQuantity + 1 > productQuantity) {
    print('No se puede exceder la cantidad disponible del producto.');
    return currentQuantity; // Mantener la cantidad actual si excede
  }

  final newQuantity = currentQuantity + 1;
  return newQuantity; // Devolver la nueva cantidad si es válida
}
