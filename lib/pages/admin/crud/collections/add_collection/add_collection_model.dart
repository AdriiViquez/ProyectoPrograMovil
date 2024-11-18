import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_collection_widget.dart' show AddCollectionWidget;
import 'package:flutter/material.dart';

class AddCollectionModel extends FlutterFlowModel<AddCollectionWidget> {
  ///  Local state fields for this page.

  bool isStatusSelected = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtCollectionName widget.
  FocusNode? txtCollectionNameFocusNode;
  TextEditingController? txtCollectionNameTextController;
  String? Function(BuildContext, String?)?
      txtCollectionNameTextControllerValidator;
  String? _txtCollectionNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'The Collection Name is Required';
    }

    if (val.length < 3) {
      return 'The Collection Name needs a least 3 characters minimum';
    }
    if (val.length > 255) {
      return 'The Collection Name is to long';
    }
    if (!RegExp('').hasMatch(val)) {
      return 'Only letters, spaces, and accented characters are allowed.';
    }
    return null;
  }

  // State field(s) for txtCollectionDescription widget.
  FocusNode? txtCollectionDescriptionFocusNode;
  TextEditingController? txtCollectionDescriptionTextController;
  String? Function(BuildContext, String?)?
      txtCollectionDescriptionTextControllerValidator;
  String? _txtCollectionDescriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'The Collection Description is Required';
    }

    if (val.length < 3) {
      return 'The Collection Description needs a least 3 characters minimum';
    }
    if (val.length > 255) {
      return 'The Collection Description is to long';
    }
    if (!RegExp('').hasMatch(val)) {
      return 'Only letters, numbers, spaces, and commas are allowed';
    }
    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for dprdStatus widget.
  String? dprdStatusValue;
  FormFieldController<String>? dprdStatusValueController;

  @override
  void initState(BuildContext context) {
    txtCollectionNameTextControllerValidator =
        _txtCollectionNameTextControllerValidator;
    txtCollectionDescriptionTextControllerValidator =
        _txtCollectionDescriptionTextControllerValidator;
  }

  @override
  void dispose() {
    txtCollectionNameFocusNode?.dispose();
    txtCollectionNameTextController?.dispose();

    txtCollectionDescriptionFocusNode?.dispose();
    txtCollectionDescriptionTextController?.dispose();
  }
}
