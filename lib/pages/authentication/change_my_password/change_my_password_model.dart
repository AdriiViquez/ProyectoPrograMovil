import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'change_my_password_widget.dart' show ChangeMyPasswordWidget;
import 'package:flutter/material.dart';

class ChangeMyPasswordModel extends FlutterFlowModel<ChangeMyPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtPassword widget.
  FocusNode? txtPasswordFocusNode;
  TextEditingController? txtPasswordTextController;
  late bool txtPasswordVisibility;
  String? Function(BuildContext, String?)? txtPasswordTextControllerValidator;
  String? _txtPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 3) {
      return 'You must put a least 3 characters';
    }

    return null;
  }

  // State field(s) for txtConfirmPassword widget.
  FocusNode? txtConfirmPasswordFocusNode;
  TextEditingController? txtConfirmPasswordTextController;
  String? Function(BuildContext, String?)?
      txtConfirmPasswordTextControllerValidator;
  String? _txtConfirmPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 3) {
      return 'You must put a least 3 characters';
    }

    return null;
  }

  // State field(s) for dprAdmin widget.
  String? dprAdminValue;
  FormFieldController<String>? dprAdminValueController;

  @override
  void initState(BuildContext context) {
    txtPasswordVisibility = false;
    txtPasswordTextControllerValidator = _txtPasswordTextControllerValidator;
    txtConfirmPasswordTextControllerValidator =
        _txtConfirmPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    txtPasswordFocusNode?.dispose();
    txtPasswordTextController?.dispose();

    txtConfirmPasswordFocusNode?.dispose();
    txtConfirmPasswordTextController?.dispose();
  }
}
