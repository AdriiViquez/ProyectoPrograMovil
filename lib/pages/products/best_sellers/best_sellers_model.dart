import '/flutter_flow/flutter_flow_util.dart';
import 'best_sellers_widget.dart' show BestSellersWidget;
import 'package:flutter/material.dart';

class BestSellersModel extends FlutterFlowModel<BestSellersWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtSearch widget.
  FocusNode? txtSearchFocusNode;
  TextEditingController? txtSearchTextController;
  String? Function(BuildContext, String?)? txtSearchTextControllerValidator;
  // State field(s) for RatingBar widget.
  double? ratingBarValue1;
  // State field(s) for RatingBar widget.
  double? ratingBarValue2;
  // State field(s) for RatingBar widget.
  double? ratingBarValue3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtSearchFocusNode?.dispose();
    txtSearchTextController?.dispose();
  }
}
