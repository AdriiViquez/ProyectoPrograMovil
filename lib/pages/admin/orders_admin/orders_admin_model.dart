import '/flutter_flow/flutter_flow_util.dart';
import 'orders_admin_widget.dart' show OrdersAdminWidget;
import 'package:flutter/material.dart';

class OrdersAdminModel extends FlutterFlowModel<OrdersAdminWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
