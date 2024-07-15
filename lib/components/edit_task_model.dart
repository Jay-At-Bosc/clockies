import '/flutter_flow/flutter_flow_util.dart';
import 'edit_task_widget.dart' show EditTaskWidget;
import 'package:flutter/material.dart';

class EditTaskModel extends FlutterFlowModel<EditTaskWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  DateTime? datePicked;
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
