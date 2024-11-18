import '/flutter_flow/flutter_flow_util.dart';
import 'providers_admin_widget.dart' show ProvidersAdminWidget;
import 'package:flutter/material.dart';

class ProvidersAdminModel extends FlutterFlowModel<ProvidersAdminWidget> {
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
