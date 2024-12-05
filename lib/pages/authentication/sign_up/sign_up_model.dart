import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  Local state fields for this page.

  List<String> roleList = ['Client'];
  void addToRoleList(String item) => roleList.add(item);
  void removeFromRoleList(String item) => roleList.remove(item);
  void removeAtIndexFromRoleList(int index) => roleList.removeAt(index);
  void insertAtIndexInRoleList(int index, String item) =>
      roleList.insert(index, item);
  void updateRoleListAtIndex(int index, Function(String) updateFn) =>
      roleList[index] = updateFn(roleList[index]);

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
  FocusNode? txtPhoneFocusNode;
  TextEditingController? txtPhoneTextController;
  String? Function(BuildContext, String?)? txtPhoneTextControllerValidator;
  // State field(s) for txtAddress widget.
  FocusNode? txtAddressFocusNode;
  TextEditingController? txtAddressTextController;
  String? Function(BuildContext, String?)? txtAddressTextControllerValidator;
  // State field(s) for txtPassword widget.
  FocusNode? txtPasswordFocusNode;
  TextEditingController? txtPasswordTextController;
  late bool txtPasswordVisibility;
  String? Function(BuildContext, String?)? txtPasswordTextControllerValidator;
  // State field(s) for txtPasswordConfirm widget.
  FocusNode? txtPasswordConfirmFocusNode;
  TextEditingController? txtPasswordConfirmTextController;
  late bool txtPasswordConfirmVisibility;
  String? Function(BuildContext, String?)?
      txtPasswordConfirmTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtPasswordVisibility = false;
    txtPasswordConfirmVisibility = false;
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
