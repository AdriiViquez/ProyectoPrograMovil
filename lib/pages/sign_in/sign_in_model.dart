import '/flutter_flow/flutter_flow_util.dart';
import 'sign_in_widget.dart' show SignInWidget;
import 'package:flutter/material.dart';

class SignInModel extends FlutterFlowModel<SignInWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode1;
  TextEditingController? txtEmailTextController1;
  String? Function(BuildContext, String?)? txtEmailTextController1Validator;
  // State field(s) for txtPassword widget.
  FocusNode? txtPasswordFocusNode1;
  TextEditingController? txtPasswordTextController1;
  late bool txtPasswordVisibility1;
  String? Function(BuildContext, String?)? txtPasswordTextController1Validator;
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode2;
  TextEditingController? txtEmailTextController2;
  String? Function(BuildContext, String?)? txtEmailTextController2Validator;
  // State field(s) for txtPassword widget.
  FocusNode? txtPasswordFocusNode2;
  TextEditingController? txtPasswordTextController2;
  late bool txtPasswordVisibility2;
  String? Function(BuildContext, String?)? txtPasswordTextController2Validator;

  @override
  void initState(BuildContext context) {
    txtPasswordVisibility1 = false;
    txtPasswordVisibility2 = false;
  }

  @override
  void dispose() {
    txtEmailFocusNode1?.dispose();
    txtEmailTextController1?.dispose();

    txtPasswordFocusNode1?.dispose();
    txtPasswordTextController1?.dispose();

    txtEmailFocusNode2?.dispose();
    txtEmailTextController2?.dispose();

    txtPasswordFocusNode2?.dispose();
    txtPasswordTextController2?.dispose();
  }
}
