import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  List<ProjectModelStruct> projects = [];
  void addToProjects(ProjectModelStruct item) => projects.add(item);
  void removeFromProjects(ProjectModelStruct item) => projects.remove(item);
  void removeAtIndexFromProjects(int index) => projects.removeAt(index);
  void insertAtIndexInProjects(int index, ProjectModelStruct item) =>
      projects.insert(index, item);
  void updateProjectsAtIndex(
          int index, Function(ProjectModelStruct) updateFn) =>
      projects[index] = updateFn(projects[index]);

  List<int> members = [];
  void addToMembers(int item) => members.add(item);
  void removeFromMembers(int item) => members.remove(item);
  void removeAtIndexFromMembers(int index) => members.removeAt(index);
  void insertAtIndexInMembers(int index, int item) =>
      members.insert(index, item);
  void updateMembersAtIndex(int index, Function(int) updateFn) =>
      members[index] = updateFn(members[index]);

  bool isLoading = true;

  List<TaskModelStruct> tasks = [];
  void addToTasks(TaskModelStruct item) => tasks.add(item);
  void removeFromTasks(TaskModelStruct item) => tasks.remove(item);
  void removeAtIndexFromTasks(int index) => tasks.removeAt(index);
  void insertAtIndexInTasks(int index, TaskModelStruct item) =>
      tasks.insert(index, item);
  void updateTasksAtIndex(int index, Function(TaskModelStruct) updateFn) =>
      tasks[index] = updateFn(tasks[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Fetch Assigned Project)] action in Home widget.
  ApiCallResponse? project;
  // Stores action output result for [Backend Call - API (Fetch My Tasks)] action in Home widget.
  ApiCallResponse? taskList;
  // Stores action output result for [Backend Call - API (Fetch Assigned Project)] action in Column widget.
  ApiCallResponse? projectListCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
