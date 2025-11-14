import '/flutter_flow/flutter_flow_util.dart';
import 'edit_date_widget.dart' show EditDateWidget;
import 'package:flutter/material.dart';

class EditDateModel extends FlutterFlowModel<EditDateWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for task widget.
  FocusNode? taskFocusNode;
  TextEditingController? taskTextController;
  String? Function(BuildContext, String?)? taskTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for Slider widget.
  double? sliderValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    taskFocusNode?.dispose();
    taskTextController?.dispose();
  }
}
