import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

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

  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode1;
  TextEditingController? txtEmailTextController1;
  String? Function(BuildContext, String?)? txtEmailTextController1Validator;
  // State field(s) for txtLastName widget.
  FocusNode? txtLastNameFocusNode;
  TextEditingController? txtLastNameTextController;
  String? Function(BuildContext, String?)? txtLastNameTextControllerValidator;
  // State field(s) for txtsecondLastName widget.
  FocusNode? txtsecondLastNameFocusNode;
  TextEditingController? txtsecondLastNameTextController;
  String? Function(BuildContext, String?)?
      txtsecondLastNameTextControllerValidator;
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode2;
  TextEditingController? txtEmailTextController2;
  String? Function(BuildContext, String?)? txtEmailTextController2Validator;
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode3;
  TextEditingController? txtEmailTextController3;
  String? Function(BuildContext, String?)? txtEmailTextController3Validator;
  // State field(s) for dprAdmin widget.
  String? dprAdminValue;
  FormFieldController<String>? dprAdminValueController;

  @override
  void initState(BuildContext context) {
    txtNameTextControllerValidator = _txtNameTextControllerValidator;
  }

  @override
  void dispose() {
    txtNameFocusNode?.dispose();
    txtNameTextController?.dispose();

    txtEmailFocusNode1?.dispose();
    txtEmailTextController1?.dispose();

    txtLastNameFocusNode?.dispose();
    txtLastNameTextController?.dispose();

    txtsecondLastNameFocusNode?.dispose();
    txtsecondLastNameTextController?.dispose();

    txtEmailFocusNode2?.dispose();
    txtEmailTextController2?.dispose();

    txtEmailFocusNode3?.dispose();
    txtEmailTextController3?.dispose();
  }
}
