import '/flutter_flow/flutter_flow_util.dart';
import 'my_task_list_view_widget.dart' show MyTaskListViewWidget;
import 'package:flutter/material.dart';

class MyTaskListViewModel extends FlutterFlowModel<MyTaskListViewWidget> {
  ///  Local state fields for this component.

  List<String> sectionList = [
    'Recently assigned',
    'Due today',
    'Due tomorrow',
    'Due by this week'
  ];
  void addToSectionList(String item) => sectionList.add(item);
  void removeFromSectionList(String item) => sectionList.remove(item);
  void removeAtIndexFromSectionList(int index) => sectionList.removeAt(index);
  void insertAtIndexInSectionList(int index, String item) =>
      sectionList.insert(index, item);
  void updateSectionListAtIndex(int index, Function(String) updateFn) =>
      sectionList[index] = updateFn(sectionList[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
