import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'task_status_filter_model.dart';
export 'task_status_filter_model.dart';

class TaskStatusFilterWidget extends StatefulWidget {
  const TaskStatusFilterWidget({super.key});

  @override
  State<TaskStatusFilterWidget> createState() => _TaskStatusFilterWidgetState();
}

class _TaskStatusFilterWidgetState extends State<TaskStatusFilterWidget> {
  late TaskStatusFilterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TaskStatusFilterModel());
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
