import '/flutter_flow/flutter_flow_credit_card_form.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'check_out_widget.dart' show CheckOutWidget;
import 'package:flutter/material.dart';

class CheckOutModel extends FlutterFlowModel<CheckOutWidget> {
  ///  Local state fields for this page.

  int counter = 1;

  ///  State fields for stateful widgets in this page.

  // State field(s) for CreditCardForm widget.
  final creditCardFormKey = GlobalKey<FormState>();
  CreditCardModel creditCardInfo = emptyCreditCard();
  // State field(s) for dprAdmin widget.
  String? dprAdminValue;
  FormFieldController<String>? dprAdminValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
