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

Future<ProductToCartStruct> processProductDatatoCart(
    ProductRecord product) async {
  // Mapea los atributos del producto
  final double basePrice = product.price;
  final double priceWithIVA = basePrice * 1.13; // Suponiendo un IVA del 19%
  final int quantity = 1;
  final DocumentReference productRef = product.reference;

  // Crea una instancia de ProductToCartStruct con los datos mapeados
  return ProductToCartStruct(
    basePrice: basePrice,
    priceWithIVA: priceWithIVA,
    quantity: quantity,
    productRef: productRef,
  );
}
