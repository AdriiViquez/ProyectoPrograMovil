import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'details_product_widget.dart' show DetailsProductWidget;
import 'package:flutter/material.dart';

class DetailsProductModel extends FlutterFlowModel<DetailsProductWidget> {
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

  String isAdmin = 'Admin';

  List<ProductRecord> listOfProducts = [];
  void addToListOfProducts(ProductRecord item) => listOfProducts.add(item);
  void removeFromListOfProducts(ProductRecord item) =>
      listOfProducts.remove(item);
  void removeAtIndexFromListOfProducts(int index) =>
      listOfProducts.removeAt(index);
  void insertAtIndexInListOfProducts(int index, ProductRecord item) =>
      listOfProducts.insert(index, item);
  void updateListOfProductsAtIndex(
          int index, Function(ProductRecord) updateFn) =>
      listOfProducts[index] = updateFn(listOfProducts[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Stores action output result for [Custom Action - processProductDatatoCart] action in Purchase widget.
  ProductToCartStruct? productToCart2;
  // Stores action output result for [Firestore Query - Query a collection] action in Purchase widget.
  CartRecord? productExistsInCart2;
  // Stores action output result for [Backend Call - Create Document] action in Purchase widget.
  CartRecord? cartItem2;
  // Stores action output result for [Custom Action - processProductDatatoCart] action in AddCar widget.
  ProductToCartStruct? productToCart;
  // Stores action output result for [Firestore Query - Query a collection] action in AddCar widget.
  CartRecord? productExistsInCart;
  // Stores action output result for [Backend Call - Create Document] action in AddCar widget.
  CartRecord? cartItem;
  // State field(s) for dprAdmin widget.
  String? dprAdminValue;
  FormFieldController<String>? dprAdminValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
