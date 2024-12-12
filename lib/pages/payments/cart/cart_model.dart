import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cart_widget.dart' show CartWidget;
import 'package:flutter/material.dart';

class CartModel extends FlutterFlowModel<CartWidget> {
  ///  Local state fields for this page.

  int counter = 1;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - decrementQuantityCart] action in IconButton widget.
  int? lessQuantity;
  // Stores action output result for [Custom Action - incrementQuantityCart] action in IconButton widget.
  int? newQuantity;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<CartRecord>? cartList;
  // State field(s) for dprAdmin widget.
  String? dprAdminValue;
  FormFieldController<String>? dprAdminValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
