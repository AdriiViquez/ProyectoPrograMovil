import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_user_widget.dart' show CreateUserWidget;
import 'package:flutter/material.dart';

class CreateUserModel extends FlutterFlowModel<CreateUserWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtName widget.
  FocusNode? txtNameFocusNode;
  TextEditingController? txtNameTextController;
  String? Function(BuildContext, String?)? txtNameTextControllerValidator;
  // State field(s) for txt_LatName widget.
  FocusNode? txtLatNameFocusNode;
  TextEditingController? txtLatNameTextController;
  String? Function(BuildContext, String?)? txtLatNameTextControllerValidator;
  // State field(s) for txtSecondLastName widget.
  FocusNode? txtSecondLastNameFocusNode;
  TextEditingController? txtSecondLastNameTextController;
  String? Function(BuildContext, String?)?
      txtSecondLastNameTextControllerValidator;
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  // State field(s) for txtPhone widget.
  FocusNode? txtPhoneFocusNode1;
  TextEditingController? txtPhoneTextController1;
  String? Function(BuildContext, String?)? txtPhoneTextController1Validator;
  // State field(s) for txtPhone widget.
  FocusNode? txtPhoneFocusNode2;
  TextEditingController? txtPhoneTextController2;
  String? Function(BuildContext, String?)? txtPhoneTextController2Validator;
  // State field(s) for txtPassword widget.
  FocusNode? txtPasswordFocusNode;
  TextEditingController? txtPasswordTextController;
  late bool txtPasswordVisibility;
  String? Function(BuildContext, String?)? txtPasswordTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {
    txtPasswordVisibility = false;
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

    txtPhoneFocusNode1?.dispose();
    txtPhoneTextController1?.dispose();

    txtPhoneFocusNode2?.dispose();
    txtPhoneTextController2?.dispose();

    txtPasswordFocusNode?.dispose();
    txtPasswordTextController?.dispose();
  }
}
