import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'addfile_widget.dart' show AddfileWidget;
import 'package:flutter/material.dart';

class AddfileModel extends FlutterFlowModel<AddfileWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for filename widget.
  FocusNode? filenameFocusNode;
  TextEditingController? filenameTextController;
  String? Function(BuildContext, String?)? filenameTextControllerValidator;
  bool isDataUploading_uploadedFile = false;
  FFUploadedFile uploadedLocalFile_uploadedFile =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadedFile = '';

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  FileNamesRecord? addfiletotable;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    filenameFocusNode?.dispose();
    filenameTextController?.dispose();
  }
}
