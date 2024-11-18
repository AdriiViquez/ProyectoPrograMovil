import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtName widget.
  FocusNode? txtNameFocusNode1;
  TextEditingController? txtNameTextController1;
  String? Function(BuildContext, String?)? txtNameTextController1Validator;
  // State field(s) for txtFisrtLastName widget.
  FocusNode? txtFisrtLastNameFocusNode;
  TextEditingController? txtFisrtLastNameTextController;
  String? Function(BuildContext, String?)?
      txtFisrtLastNameTextControllerValidator;
  // State field(s) for txtSecondLastName widget.
  FocusNode? txtSecondLastNameFocusNode1;
  TextEditingController? txtSecondLastNameTextController1;
  String? Function(BuildContext, String?)?
      txtSecondLastNameTextController1Validator;
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode1;
  TextEditingController? txtEmailTextController1;
  String? Function(BuildContext, String?)? txtEmailTextController1Validator;
  // State field(s) for txtPhoneNumber widget.
  FocusNode? txtPhoneNumberFocusNode;
  TextEditingController? txtPhoneNumberTextController;
  String? Function(BuildContext, String?)?
      txtPhoneNumberTextControllerValidator;
  // State field(s) for txtAddress widget.
  FocusNode? txtAddressFocusNode1;
  TextEditingController? txtAddressTextController1;
  String? Function(BuildContext, String?)? txtAddressTextController1Validator;
  // State field(s) for txtPassword widget.
  FocusNode? txtPasswordFocusNode1;
  TextEditingController? txtPasswordTextController1;
  late bool txtPasswordVisibility1;
  String? Function(BuildContext, String?)? txtPasswordTextController1Validator;
  // State field(s) for txtConfirmPassword widget.
  FocusNode? txtConfirmPasswordFocusNode;
  TextEditingController? txtConfirmPasswordTextController;
  late bool txtConfirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      txtConfirmPasswordTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for txtName widget.
  FocusNode? txtNameFocusNode2;
  TextEditingController? txtNameTextController2;
  String? Function(BuildContext, String?)? txtNameTextController2Validator;
  // State field(s) for txt_LatName widget.
  FocusNode? txtLatNameFocusNode;
  TextEditingController? txtLatNameTextController;
  String? Function(BuildContext, String?)? txtLatNameTextControllerValidator;
  // State field(s) for txtSecondLastName widget.
  FocusNode? txtSecondLastNameFocusNode2;
  TextEditingController? txtSecondLastNameTextController2;
  String? Function(BuildContext, String?)?
      txtSecondLastNameTextController2Validator;
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode2;
  TextEditingController? txtEmailTextController2;
  String? Function(BuildContext, String?)? txtEmailTextController2Validator;
  // State field(s) for txtPhone widget.
  FocusNode? txtPhoneFocusNode;
  TextEditingController? txtPhoneTextController;
  String? Function(BuildContext, String?)? txtPhoneTextControllerValidator;
  // State field(s) for txtAddress widget.
  FocusNode? txtAddressFocusNode2;
  TextEditingController? txtAddressTextController2;
  String? Function(BuildContext, String?)? txtAddressTextController2Validator;
  // State field(s) for txtPassword widget.
  FocusNode? txtPasswordFocusNode2;
  TextEditingController? txtPasswordTextController2;
  late bool txtPasswordVisibility2;
  String? Function(BuildContext, String?)? txtPasswordTextController2Validator;
  // State field(s) for txtPasswordConfirm widget.
  FocusNode? txtPasswordConfirmFocusNode;
  TextEditingController? txtPasswordConfirmTextController;
  late bool txtPasswordConfirmVisibility;
  String? Function(BuildContext, String?)?
      txtPasswordConfirmTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtPasswordVisibility1 = false;
    txtConfirmPasswordVisibility = false;
    txtPasswordVisibility2 = false;
    txtPasswordConfirmVisibility = false;
  }

  @override
  void dispose() {
    txtNameFocusNode1?.dispose();
    txtNameTextController1?.dispose();

    txtFisrtLastNameFocusNode?.dispose();
    txtFisrtLastNameTextController?.dispose();

    txtSecondLastNameFocusNode1?.dispose();
    txtSecondLastNameTextController1?.dispose();

    txtEmailFocusNode1?.dispose();
    txtEmailTextController1?.dispose();

    txtPhoneNumberFocusNode?.dispose();
    txtPhoneNumberTextController?.dispose();

    txtAddressFocusNode1?.dispose();
    txtAddressTextController1?.dispose();

    txtPasswordFocusNode1?.dispose();
    txtPasswordTextController1?.dispose();

    txtConfirmPasswordFocusNode?.dispose();
    txtConfirmPasswordTextController?.dispose();

    txtNameFocusNode2?.dispose();
    txtNameTextController2?.dispose();

    txtLatNameFocusNode?.dispose();
    txtLatNameTextController?.dispose();

    txtSecondLastNameFocusNode2?.dispose();
    txtSecondLastNameTextController2?.dispose();

    txtEmailFocusNode2?.dispose();
    txtEmailTextController2?.dispose();

    txtPhoneFocusNode?.dispose();
    txtPhoneTextController?.dispose();

    txtAddressFocusNode2?.dispose();
    txtAddressTextController2?.dispose();

    txtPasswordFocusNode2?.dispose();
    txtPasswordTextController2?.dispose();

    txtPasswordConfirmFocusNode?.dispose();
    txtPasswordConfirmTextController?.dispose();
  }
}
