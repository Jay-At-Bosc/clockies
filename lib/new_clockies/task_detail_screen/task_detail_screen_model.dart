import '/flutter_flow/flutter_flow_util.dart';
import '/new_component/button/back_button/back_button_widget.dart';
import 'task_detail_screen_widget.dart' show TaskDetailScreenWidget;
import 'package:flutter/material.dart';

class TaskDetailScreenModel extends FlutterFlowModel<TaskDetailScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for BackButton component.
  late BackButtonModel backButtonModel;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    backButtonModel.dispose();
  }
}
