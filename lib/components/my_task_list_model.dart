import '/flutter_flow/flutter_flow_util.dart';
import 'my_task_list_widget.dart' show MyTaskListWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class MyTaskListModel extends FlutterFlowModel<MyTaskListWidget> {
  ///  Local state fields for this component.

  bool selected = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}
