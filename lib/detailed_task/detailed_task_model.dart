import '/flutter_flow/flutter_flow_util.dart';
import 'detailed_task_widget.dart' show DetailedTaskWidget;
import 'package:flutter/material.dart';

class DetailedTaskModel extends FlutterFlowModel<DetailedTaskWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
