import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_category_widget.dart' show EditCategoryWidget;
import 'package:flutter/material.dart';

class EditCategoryModel extends FlutterFlowModel<EditCategoryWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtCategoryName widget.
  FocusNode? txtCategoryNameFocusNode;
  TextEditingController? txtCategoryNameTextController;
  String? Function(BuildContext, String?)?
      txtCategoryNameTextControllerValidator;
  String? _txtCategoryNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Name is required';
    }

    if (val.length < 3) {
      return ' Name needs a least 3 characters minimum';
    }
    if (val.length > 255) {
      return 'Name is to long';
    }
    if (!RegExp('').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for dprCategoryStatus widget.
  String? dprCategoryStatusValue;
  FormFieldController<String>? dprCategoryStatusValueController;

  @override
  void initState(BuildContext context) {
    txtCategoryNameTextControllerValidator =
        _txtCategoryNameTextControllerValidator;
  }

  @override
  void dispose() {
    txtCategoryNameFocusNode?.dispose();
    txtCategoryNameTextController?.dispose();
  }
}
