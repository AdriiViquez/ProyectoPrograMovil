import '/flutter_flow/flutter_flow_util.dart';
import 'details_provider_widget.dart' show DetailsProviderWidget;
import 'package:flutter/material.dart';

class DetailsProviderModel extends FlutterFlowModel<DetailsProviderWidget> {
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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
