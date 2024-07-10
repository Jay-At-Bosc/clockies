import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'timeline_widget.dart' show TimelineWidget;
import 'package:flutter/material.dart';

class TimelineModel extends FlutterFlowModel<TimelineWidget> {
  ///  Local state fields for this page.

  List<TaskModelStruct> taskList = [];
  void addToTaskList(TaskModelStruct item) => taskList.add(item);
  void removeFromTaskList(TaskModelStruct item) => taskList.remove(item);
  void removeAtIndexFromTaskList(int index) => taskList.removeAt(index);
  void insertAtIndexInTaskList(int index, TaskModelStruct item) =>
      taskList.insert(index, item);
  void updateTaskListAtIndex(int index, Function(TaskModelStruct) updateFn) =>
      taskList[index] = updateFn(taskList[index]);

  bool isLoading = true;

  bool isDatePicked = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Timeline Fetch Manual Logs API)] action in timeline widget.
  ApiCallResponse? onPageTimeline;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
