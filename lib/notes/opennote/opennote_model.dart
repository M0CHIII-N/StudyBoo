import '/flutter_flow/flutter_flow_util.dart';
import 'opennote_widget.dart' show OpennoteWidget;
import 'package:flutter/material.dart';

class OpennoteModel extends FlutterFlowModel<OpennoteWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
