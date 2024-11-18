import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_provider_widget.dart' show EditProviderWidget;
import 'package:flutter/material.dart';

class EditProviderModel extends FlutterFlowModel<EditProviderWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtProviderName widget.
  FocusNode? txtProviderNameFocusNode;
  TextEditingController? txtProviderNameTextController;
  String? Function(BuildContext, String?)?
      txtProviderNameTextControllerValidator;
  String? _txtProviderNameTextControllerValidator(
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

  // State field(s) for txtProviderTitle widget.
  FocusNode? txtProviderTitleFocusNode;
  TextEditingController? txtProviderTitleTextController;
  String? Function(BuildContext, String?)?
      txtProviderTitleTextControllerValidator;
  String? _txtProviderTitleTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Title is required';
    }

    if (val.length < 3) {
      return 'Title needs a least 3 characters minimum';
    }
    if (val.length > 255) {
      return 'Title is too long';
    }
    if (!RegExp('').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for txtProviderEmail widget.
  FocusNode? txtProviderEmailFocusNode;
  TextEditingController? txtProviderEmailTextController;
  String? Function(BuildContext, String?)?
      txtProviderEmailTextControllerValidator;
  String? _txtProviderEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email  is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Invalid email format';
    }
    return null;
  }

  // State field(s) for txtProviderPhone widget.
  FocusNode? txtProviderPhoneFocusNode;
  TextEditingController? txtProviderPhoneTextController;
  String? Function(BuildContext, String?)?
      txtProviderPhoneTextControllerValidator;
  String? _txtProviderPhoneTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Phone is required';
    }

    if (val.length < 3) {
      return 'Phone needs a least 3 characters minimum';
    }
    if (val.length > 11) {
      return 'Phone is too long';
    }
    if (!RegExp('').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for txtProviderDescription widget.
  FocusNode? txtProviderDescriptionFocusNode;
  TextEditingController? txtProviderDescriptionTextController;
  String? Function(BuildContext, String?)?
      txtProviderDescriptionTextControllerValidator;
  String? _txtProviderDescriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Description is required';
    }

    if (val.length < 3) {
      return 'Description needs a least 3 characters minimum';
    }
    if (val.length > 500) {
      return 'Description is too long';
    }
    if (!RegExp('').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for txtProviderAddress widget.
  FocusNode? txtProviderAddressFocusNode;
  TextEditingController? txtProviderAddressTextController;
  String? Function(BuildContext, String?)?
      txtProviderAddressTextControllerValidator;
  String? _txtProviderAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Address is required';
    }

    if (val.length < 3) {
      return 'Address needs a least 3 characters minimum';
    }
    if (val.length > 255) {
      return 'Address is too long';
    }
    if (!RegExp('').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for dprProviderStatus widget.
  String? dprProviderStatusValue;
  FormFieldController<String>? dprProviderStatusValueController;
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {
    txtProviderNameTextControllerValidator =
        _txtProviderNameTextControllerValidator;
    txtProviderTitleTextControllerValidator =
        _txtProviderTitleTextControllerValidator;
    txtProviderEmailTextControllerValidator =
        _txtProviderEmailTextControllerValidator;
    txtProviderPhoneTextControllerValidator =
        _txtProviderPhoneTextControllerValidator;
    txtProviderDescriptionTextControllerValidator =
        _txtProviderDescriptionTextControllerValidator;
    txtProviderAddressTextControllerValidator =
        _txtProviderAddressTextControllerValidator;
  }

  @override
  void dispose() {
    txtProviderNameFocusNode?.dispose();
    txtProviderNameTextController?.dispose();

    txtProviderTitleFocusNode?.dispose();
    txtProviderTitleTextController?.dispose();

    txtProviderEmailFocusNode?.dispose();
    txtProviderEmailTextController?.dispose();

    txtProviderPhoneFocusNode?.dispose();
    txtProviderPhoneTextController?.dispose();

    txtProviderDescriptionFocusNode?.dispose();
    txtProviderDescriptionTextController?.dispose();

    txtProviderAddressFocusNode?.dispose();
    txtProviderAddressTextController?.dispose();
  }
}
