import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  List<ProjectsStruct> projects = [];
  void addToProjects(ProjectsStruct item) => projects.add(item);
  void removeFromProjects(ProjectsStruct item) => projects.remove(item);
  void removeAtIndexFromProjects(int index) => projects.removeAt(index);
  void insertAtIndexInProjects(int index, ProjectsStruct item) =>
      projects.insert(index, item);
  void updateProjectsAtIndex(int index, Function(ProjectsStruct) updateFn) =>
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

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Fetch Assigned Project)] action in Home widget.
  ApiCallResponse? projectList;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
