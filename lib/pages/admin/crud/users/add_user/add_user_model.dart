import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_user_widget.dart' show AddUserWidget;
import 'package:flutter/material.dart';

class AddUserModel extends FlutterFlowModel<AddUserWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtName widget.
  FocusNode? txtNameFocusNode;
  TextEditingController? txtNameTextController;
  String? Function(BuildContext, String?)? txtNameTextControllerValidator;
  String? _txtNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txt_LatName widget.
  FocusNode? txtLatNameFocusNode;
  TextEditingController? txtLatNameTextController;
  String? Function(BuildContext, String?)? txtLatNameTextControllerValidator;
  String? _txtLatNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtSecondLastName widget.
  FocusNode? txtSecondLastNameFocusNode;
  TextEditingController? txtSecondLastNameTextController;
  String? Function(BuildContext, String?)?
      txtSecondLastNameTextControllerValidator;
  String? _txtSecondLastNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  String? _txtEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtPhone widget.
  FocusNode? txtPhoneFocusNode;
  TextEditingController? txtPhoneTextController;
  String? Function(BuildContext, String?)? txtPhoneTextControllerValidator;
  String? _txtPhoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtAddress widget.
  FocusNode? txtAddressFocusNode;
  TextEditingController? txtAddressTextController;
  String? Function(BuildContext, String?)? txtAddressTextControllerValidator;
  String? _txtAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

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

    return null;
  }

  // State field(s) for txtPasswordConfirm widget.
  FocusNode? txtPasswordConfirmFocusNode;
  TextEditingController? txtPasswordConfirmTextController;
  late bool txtPasswordConfirmVisibility;
  String? Function(BuildContext, String?)?
      txtPasswordConfirmTextControllerValidator;
  String? _txtPasswordConfirmTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  List<String>? dropDownValue2;
  FormFieldController<List<String>>? dropDownValueController2;
  // State field(s) for dprAdmin widget.
  String? dprAdminValue;
  FormFieldController<String>? dprAdminValueController;

  @override
  void initState(BuildContext context) {
    txtNameTextControllerValidator = _txtNameTextControllerValidator;
    txtLatNameTextControllerValidator = _txtLatNameTextControllerValidator;
    txtSecondLastNameTextControllerValidator =
        _txtSecondLastNameTextControllerValidator;
    txtEmailTextControllerValidator = _txtEmailTextControllerValidator;
    txtPhoneTextControllerValidator = _txtPhoneTextControllerValidator;
    txtAddressTextControllerValidator = _txtAddressTextControllerValidator;
    txtPasswordVisibility = false;
    txtPasswordTextControllerValidator = _txtPasswordTextControllerValidator;
    txtPasswordConfirmVisibility = false;
    txtPasswordConfirmTextControllerValidator =
        _txtPasswordConfirmTextControllerValidator;
  }

  @override
  void dispose() {
    txtNameFocusNode?.dispose();
    txtNameTextController?.dispose();

    txtLatNameFocusNode?.dispose();
    txtLatNameTextController?.dispose();

    txtSecondLastNameFocusNode?.dispose();
    txtSecondLastNameTextController?.dispose();

    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtPhoneFocusNode?.dispose();
    txtPhoneTextController?.dispose();

    txtAddressFocusNode?.dispose();
    txtAddressTextController?.dispose();

    txtPasswordFocusNode?.dispose();
    txtPasswordTextController?.dispose();

    txtPasswordConfirmFocusNode?.dispose();
    txtPasswordConfirmTextController?.dispose();
  }
}
