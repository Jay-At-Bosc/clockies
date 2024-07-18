import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'task_complete_dialogue_widget.dart' show TaskCompleteDialogueWidget;
import 'package:flutter/material.dart';

class TaskCompleteDialogueModel
    extends FlutterFlowModel<TaskCompleteDialogueWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - checkInternet] action in Button widget.
  bool? isInternet;
  // Stores action output result for [Backend Call - API (Update Task )] action in Button widget.
  ApiCallResponse? taskUpdateResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
