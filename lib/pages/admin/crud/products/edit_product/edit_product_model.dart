import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_product_widget.dart' show EditProductWidget;
import 'package:flutter/material.dart';

class EditProductModel extends FlutterFlowModel<EditProductWidget> {
  ///  Local state fields for this page.

  List<String> colorsList = [];
  void addToColorsList(String item) => colorsList.add(item);
  void removeFromColorsList(String item) => colorsList.remove(item);
  void removeAtIndexFromColorsList(int index) => colorsList.removeAt(index);
  void insertAtIndexInColorsList(int index, String item) =>
      colorsList.insert(index, item);
  void updateColorsListAtIndex(int index, Function(String) updateFn) =>
      colorsList[index] = updateFn(colorsList[index]);

  List<String> sizesList = ['S', 'M', 'L', 'XL', '2XL'];
  void addToSizesList(String item) => sizesList.add(item);
  void removeFromSizesList(String item) => sizesList.remove(item);
  void removeAtIndexFromSizesList(int index) => sizesList.removeAt(index);
  void insertAtIndexInSizesList(int index, String item) =>
      sizesList.insert(index, item);
  void updateSizesListAtIndex(int index, Function(String) updateFn) =>
      sizesList[index] = updateFn(sizesList[index]);

  List<String> selectedSizes = [];
  void addToSelectedSizes(String item) => selectedSizes.add(item);
  void removeFromSelectedSizes(String item) => selectedSizes.remove(item);
  void removeAtIndexFromSelectedSizes(int index) =>
      selectedSizes.removeAt(index);
  void insertAtIndexInSelectedSizes(int index, String item) =>
      selectedSizes.insert(index, item);
  void updateSelectedSizesAtIndex(int index, Function(String) updateFn) =>
      selectedSizes[index] = updateFn(selectedSizes[index]);

  List<String> selectedCollection = [];
  void addToSelectedCollection(String item) => selectedCollection.add(item);
  void removeFromSelectedCollection(String item) =>
      selectedCollection.remove(item);
  void removeAtIndexFromSelectedCollection(int index) =>
      selectedCollection.removeAt(index);
  void insertAtIndexInSelectedCollection(int index, String item) =>
      selectedCollection.insert(index, item);
  void updateSelectedCollectionAtIndex(int index, Function(String) updateFn) =>
      selectedCollection[index] = updateFn(selectedCollection[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtProductName widget.
  FocusNode? txtProductNameFocusNode;
  TextEditingController? txtProductNameTextController;
  String? Function(BuildContext, String?)?
      txtProductNameTextControllerValidator;
  String? _txtProductNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Name is required';
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }
    if (val.length > 255) {
      return 'Maximum 255 characters allowed, currently ${val.length}.';
    }
    if (!RegExp('').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for txtProductPrice widget.
  FocusNode? txtProductPriceFocusNode;
  TextEditingController? txtProductPriceTextController;
  String? Function(BuildContext, String?)?
      txtProductPriceTextControllerValidator;
  String? _txtProductPriceTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Price is required';
    }

    if (val.isEmpty) {
      return 'Requires at least 1 characters.';
    }
    if (val.length > 8) {
      return 'Maximum 8 characters allowed, currently ${val.length}.';
    }
    if (!RegExp('').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for txtProductStock widget.
  FocusNode? txtProductStockFocusNode;
  TextEditingController? txtProductStockTextController;
  String? Function(BuildContext, String?)?
      txtProductStockTextControllerValidator;
  String? _txtProductStockTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Stock is required';
    }

    if (val.isEmpty) {
      return 'Requires at least 1 characters.';
    }
    if (val.length > 8) {
      return 'Maximum 8 characters allowed, currently ${val.length}.';
    }
    if (!RegExp('').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for txtProductDescription widget.
  FocusNode? txtProductDescriptionFocusNode;
  TextEditingController? txtProductDescriptionTextController;
  String? Function(BuildContext, String?)?
      txtProductDescriptionTextControllerValidator;
  String? _txtProductDescriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Description is required';
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }
    if (val.length > 500) {
      return 'Maximum 500 characters allowed, currently ${val.length}.';
    }
    if (!RegExp('').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];
  List<String> uploadedFileUrls = [];

  // State field(s) for dprStatus widget.
  String? dprStatusValue;
  FormFieldController<String>? dprStatusValueController;
  // State field(s) for dprCollection widget.
  String? dprCollectionValue;
  FormFieldController<String>? dprCollectionValueController;
  // Stores action output result for [Custom Action - compareDocumentDtoReferenceIDForCollection] action in dprCollection widget.
  DocumentReference? collectionRef;
  // State field(s) for dprCategory widget.
  String? dprCategoryValue1;
  FormFieldController<String>? dprCategoryValueController1;
  // Stores action output result for [Custom Action - compareDocumentIDtoReferenceIDForCategory] action in dprCategory widget.
  DocumentReference? categoryRef;
  // State field(s) for dprCategory widget.
  String? dprCategoryValue2;
  FormFieldController<String>? dprCategoryValueController2;
  // Stores action output result for [Custom Action - compareDocumentDtoReferenceIDForProvider] action in dprCategory widget.
  DocumentReference? providerRef;
  // State field(s) for txtColor widget.
  FocusNode? txtColorFocusNode;
  TextEditingController? txtColorTextController;
  String? Function(BuildContext, String?)? txtColorTextControllerValidator;
  // State field(s) for Checkbox widget.
  Map<String, bool> checkboxValueMap = {};
  List<String> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  // Stores action output result for [Custom Action - getCollectionIdReference] action in Button widget.
  DocumentReference? collectionIdReference;
  // Stores action output result for [Custom Action - getCategoryIdReference] action in Button widget.
  DocumentReference? categoryIdReference;
  // Stores action output result for [Custom Action - getProviderIdReference] action in Button widget.
  DocumentReference? providerIdReference;

  @override
  void initState(BuildContext context) {
    txtProductNameTextControllerValidator =
        _txtProductNameTextControllerValidator;
    txtProductPriceTextControllerValidator =
        _txtProductPriceTextControllerValidator;
    txtProductStockTextControllerValidator =
        _txtProductStockTextControllerValidator;
    txtProductDescriptionTextControllerValidator =
        _txtProductDescriptionTextControllerValidator;
  }

  @override
  void dispose() {
    txtProductNameFocusNode?.dispose();
    txtProductNameTextController?.dispose();

    txtProductPriceFocusNode?.dispose();
    txtProductPriceTextController?.dispose();

    txtProductStockFocusNode?.dispose();
    txtProductStockTextController?.dispose();

    txtProductDescriptionFocusNode?.dispose();
    txtProductDescriptionTextController?.dispose();

    txtColorFocusNode?.dispose();
    txtColorTextController?.dispose();
  }
}
