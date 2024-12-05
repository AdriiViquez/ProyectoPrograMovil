import '/flutter_flow/flutter_flow_util.dart';
import 'products_admin_widget.dart' show ProductsAdminWidget;
import 'package:flutter/material.dart';

class ProductsAdminModel extends FlutterFlowModel<ProductsAdminWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
  }
}
