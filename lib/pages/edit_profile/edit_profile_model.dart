import '/flutter_flow/flutter_flow_util.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtName widget.
  FocusNode? txtNameFocusNode;
  TextEditingController? txtNameTextController;
  String? Function(BuildContext, String?)? txtNameTextControllerValidator;
  // State field(s) for txtFisrtLastName widget.
  FocusNode? txtFisrtLastNameFocusNode;
  TextEditingController? txtFisrtLastNameTextController;
  String? Function(BuildContext, String?)?
      txtFisrtLastNameTextControllerValidator;
  // State field(s) for txtSecondLastName widget.
  FocusNode? txtSecondLastNameFocusNode;
  TextEditingController? txtSecondLastNameTextController;
  String? Function(BuildContext, String?)?
      txtSecondLastNameTextControllerValidator;
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  // State field(s) for txtPhoneNumber widget.
  FocusNode? txtPhoneNumberFocusNode;
  TextEditingController? txtPhoneNumberTextController;
  String? Function(BuildContext, String?)?
      txtPhoneNumberTextControllerValidator;
  // State field(s) for txtAddress widget.
  FocusNode? txtAddressFocusNode;
  TextEditingController? txtAddressTextController;
  String? Function(BuildContext, String?)? txtAddressTextControllerValidator;
  // State field(s) for txtPassword widget.
  FocusNode? txtPasswordFocusNode;
  TextEditingController? txtPasswordTextController;
  late bool txtPasswordVisibility;
  String? Function(BuildContext, String?)? txtPasswordTextControllerValidator;
  // State field(s) for txtConfirmPassword widget.
  FocusNode? txtConfirmPasswordFocusNode;
  TextEditingController? txtConfirmPasswordTextController;
  late bool txtConfirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      txtConfirmPasswordTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    txtPasswordVisibility = false;
    txtConfirmPasswordVisibility = false;
  }

  @override
  void dispose() {
    txtNameFocusNode?.dispose();
    txtNameTextController?.dispose();

    txtFisrtLastNameFocusNode?.dispose();
    txtFisrtLastNameTextController?.dispose();

    txtSecondLastNameFocusNode?.dispose();
    txtSecondLastNameTextController?.dispose();

    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtPhoneNumberFocusNode?.dispose();
    txtPhoneNumberTextController?.dispose();

    txtAddressFocusNode?.dispose();
    txtAddressTextController?.dispose();

    txtPasswordFocusNode?.dispose();
    txtPasswordTextController?.dispose();

    txtConfirmPasswordFocusNode?.dispose();
    txtConfirmPasswordTextController?.dispose();
  }
}
