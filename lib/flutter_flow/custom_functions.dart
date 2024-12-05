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

double restaProducto(
  double valorsubtotal,
  double precio,
) {
  if (valorsubtotal > 0) {
    valorsubtotal = valorsubtotal - precio;
  }

  return valorsubtotal;
}

double sumarProducto(
  double valorsubtotal,
  double precio,
) {
  valorsubtotal = valorsubtotal + precio;
  return valorsubtotal;
}
