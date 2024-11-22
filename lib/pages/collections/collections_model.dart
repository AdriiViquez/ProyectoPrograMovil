import '/flutter_flow/flutter_flow_util.dart';
import 'collections_widget.dart' show CollectionsWidget;
import 'package:flutter/material.dart';

class CollectionsModel extends FlutterFlowModel<CollectionsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtSearch widget.
  final txtSearchKey = GlobalKey();
  FocusNode? txtSearchFocusNode;
  TextEditingController? txtSearchTextController;
  String? txtSearchSelectedOption;
  String? Function(BuildContext, String?)? txtSearchTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtSearchFocusNode?.dispose();
  }
}
