import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_task_list_tile_widget.dart' show MyTaskListTileWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class MyTaskListTileModel extends FlutterFlowModel<MyTaskListTileWidget> {
  ///  Local state fields for this component.

  bool selected = false;

  List<TaskModelStruct> displayList = [];
  void addToDisplayList(TaskModelStruct item) => displayList.add(item);
  void removeFromDisplayList(TaskModelStruct item) => displayList.remove(item);
  void removeAtIndexFromDisplayList(int index) => displayList.removeAt(index);
  void insertAtIndexInDisplayList(int index, TaskModelStruct item) =>
      displayList.insert(index, item);
  void updateDisplayListAtIndex(
          int index, Function(TaskModelStruct) updateFn) =>
      displayList[index] = updateFn(displayList[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}
