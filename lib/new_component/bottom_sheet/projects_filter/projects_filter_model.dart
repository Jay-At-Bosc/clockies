import '/flutter_flow/flutter_flow_util.dart';
import 'projects_filter_widget.dart' show ProjectsFilterWidget;
import 'package:flutter/material.dart';

class ProjectsFilterModel extends FlutterFlowModel<ProjectsFilterWidget> {
  ///  Local state fields for this component.

  List<String> projectsOptionList = [
    'Clockies',
    'Wambam',
    'Collexn',
    'Level Out'
  ];
  void addToProjectsOptionList(String item) => projectsOptionList.add(item);
  void removeFromProjectsOptionList(String item) =>
      projectsOptionList.remove(item);
  void removeAtIndexFromProjectsOptionList(int index) =>
      projectsOptionList.removeAt(index);
  void insertAtIndexInProjectsOptionList(int index, String item) =>
      projectsOptionList.insert(index, item);
  void updateProjectsOptionListAtIndex(int index, Function(String) updateFn) =>
      projectsOptionList[index] = updateFn(projectsOptionList[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
