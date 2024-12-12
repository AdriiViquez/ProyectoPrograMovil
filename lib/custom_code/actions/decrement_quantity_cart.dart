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

Future<int> decrementQuantityCart(int currentQuantity) async {
  // Verificar si la cantidad nueva es menor que el mínimo permitido
  if (currentQuantity - 1 < 1) {
    print('La cantidad mínima permitida es 1.');
    return currentQuantity; // Mantener la cantidad actual si es menor al mínimo
  }

  final newQuantity = currentQuantity - 1;
  return newQuantity; // Devolver la nueva cantidad si es válida
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
