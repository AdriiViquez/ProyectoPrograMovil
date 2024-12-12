import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'products_collection_widget.dart' show ProductsCollectionWidget;
import 'package:flutter/material.dart';

class ProductsCollectionModel
    extends FlutterFlowModel<ProductsCollectionWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtSearch widget.
  final txtSearchKey = GlobalKey();
  FocusNode? txtSearchFocusNode;
  TextEditingController? txtSearchTextController;
  String? txtSearchSelectedOption;
  String? Function(BuildContext, String?)? txtSearchTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Custom Action - compareDocumentIDtoReferenceIDForCategory] action in DropDown widget.
  DocumentReference? categoryRef;
  // State field(s) for dprAdmin widget.
  String? dprAdminValue;
  FormFieldController<String>? dprAdminValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtSearchFocusNode?.dispose();
  }
}
