import '/flutter_flow/flutter_flow_util.dart';
import 'task_status_filter_widget.dart' show TaskStatusFilterWidget;
import 'package:flutter/material.dart';

class TaskStatusFilterModel extends FlutterFlowModel<TaskStatusFilterWidget> {
  ///  Local state fields for this component.

  List<String> taskStatusOptionList = [
    'In Progress',
    'Not Started',
    'Completed',
    'Blocked'
  ];
  void addToTaskStatusOptionList(String item) => taskStatusOptionList.add(item);
  void removeFromTaskStatusOptionList(String item) =>
      taskStatusOptionList.remove(item);
  void removeAtIndexFromTaskStatusOptionList(int index) =>
      taskStatusOptionList.removeAt(index);
  void insertAtIndexInTaskStatusOptionList(int index, String item) =>
      taskStatusOptionList.insert(index, item);
  void updateTaskStatusOptionListAtIndex(
          int index, Function(String) updateFn) =>
      taskStatusOptionList[index] = updateFn(taskStatusOptionList[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
