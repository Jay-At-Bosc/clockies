import '/flutter_flow/flutter_flow_util.dart';
import 'due_filter_widget.dart' show DueFilterWidget;
import 'package:flutter/material.dart';

class DueFilterModel extends FlutterFlowModel<DueFilterWidget> {
  ///  Local state fields for this component.

  List<String> dueByOptionList = ['Today', 'Tomorrow', 'This week'];
  void addToDueByOptionList(String item) => dueByOptionList.add(item);
  void removeFromDueByOptionList(String item) => dueByOptionList.remove(item);
  void removeAtIndexFromDueByOptionList(int index) =>
      dueByOptionList.removeAt(index);
  void insertAtIndexInDueByOptionList(int index, String item) =>
      dueByOptionList.insert(index, item);
  void updateDueByOptionListAtIndex(int index, Function(String) updateFn) =>
      dueByOptionList[index] = updateFn(dueByOptionList[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
