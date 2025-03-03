import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'timeline_widget.dart' show TimelineWidget;
import 'package:flutter/material.dart';

class TimelineModel extends FlutterFlowModel<TimelineWidget> {
  ///  Local state fields for this page.

  List<TimelineModelStruct> taskList = [];
  void addToTaskList(TimelineModelStruct item) => taskList.add(item);
  void removeFromTaskList(TimelineModelStruct item) => taskList.remove(item);
  void removeAtIndexFromTaskList(int index) => taskList.removeAt(index);
  void insertAtIndexInTaskList(int index, TimelineModelStruct item) =>
      taskList.insert(index, item);
  void updateTaskListAtIndex(
          int index, Function(TimelineModelStruct) updateFn) =>
      taskList[index] = updateFn(taskList[index]);

  bool isLoading = true;

  bool isDataFound = true;

  String? startDate;

  String? endDate;

  bool isDatePicked = true;

  DateTime? selectedDate;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Fetch Timeline API)] action in timeline widget.
  ApiCallResponse? onPageTimelineTask;
  DateTime? datePicked;
  // Stores action output result for [Backend Call - API (Fetch Timeline API)] action in Icon widget.
  ApiCallResponse? customDayResponse;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Icon widget.
  bool? dialogueResult;
  // Stores action output result for [Backend Call - API (Fetch Timeline API)] action in Icon widget.
  ApiCallResponse? updateTimelineTask;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
