import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'change_image_model.dart';
export 'change_image_model.dart';

class ChangeImageWidget extends StatefulWidget {
  /// give me a component where i can update the photo of my user, and just make
  /// a form for this option
  const ChangeImageWidget({super.key});

  @override
  State<ChangeImageWidget> createState() => _ChangeImageWidgetState();
}

class _ChangeImageWidgetState extends State<ChangeImageWidget> {
  late ChangeImageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChangeImageModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
