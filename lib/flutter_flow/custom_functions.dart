import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

double totalList(List<double> subtotal) {
  double total = 0;

  for (double add in subtotal) {
    total += add;
  }

  return total;
}

double totalListPlusTax(List<double> subtotal) {
  double total = 0;
  double tax = 10.00;

  for (double add in subtotal) {
    total += add;
  }

  total += tax;

  return total;
}

double? calculateTotalBasePrice(List<CartRecord> cartList) {
  var basePrice = 0.0;

  for (var cartItem in cartList) {
    basePrice += cartItem.subTotal *
        cartItem.quantity; // Considerar el subtotal y la cantidad
  }

  // Redondear a 2 decimales
  basePrice = double.parse(basePrice.toStringAsFixed(2));

  return basePrice;
}

double sumResultIVA(List<CartRecord> cartList) {
  var totalIVAFee = 0.0;

  for (var cartItem in cartList) {
    // IVA por producto considerando cantidad
    totalIVAFee +=
        (cartItem.productwithIVA - cartItem.subTotal) * cartItem.quantity;
  }

  // Redondear a 2 decimales
  totalIVAFee = double.parse(totalIVAFee.toStringAsFixed(2));

  return totalIVAFee;
}

double calculateTotalWithIVA(List<CartRecord> cartList) {
  var totalWithIVA = 0.0;

  for (var cartItem in cartList) {
    totalWithIVA += cartItem.productwithIVA *
        cartItem.quantity; // Precio con IVA por cantidad
  }
  // Redondear a 2 decimales
  totalWithIVA = double.parse(totalWithIVA.toStringAsFixed(2));
  return totalWithIVA;
}

String getProductName(
  List<ProductRecord> listofProducts,
  CartRecord cartDocument,
) {
  for (var product in listofProducts) {
    if (product.reference == cartDocument.product) {
      return product.name;
    }
  }
  return "";
}

String getFirstImageOfProduct(
  List<ProductRecord> productsList,
  CartRecord cart,
) {
  for (var product in productsList) {
    if (product.reference == cart.product) {
      return product.images[0];
    }
  }
  return "";
}
