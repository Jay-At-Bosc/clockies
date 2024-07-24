import '/flutter_flow/flutter_flow_util.dart';
import '/new_component/circular_profile_image/circular_profile_image_widget.dart';
import 'my_task_widget.dart' show MyTaskWidget;
import 'package:flutter/material.dart';

class MyTaskModel extends FlutterFlowModel<MyTaskWidget> {
  ///  Local state fields for this page.

  List<String> filterItemList = ['Filter'];
  void addToFilterItemList(String item) => filterItemList.add(item);
  void removeFromFilterItemList(String item) => filterItemList.remove(item);
  void removeAtIndexFromFilterItemList(int index) =>
      filterItemList.removeAt(index);
  void insertAtIndexInFilterItemList(int index, String item) =>
      filterItemList.insert(index, item);
  void updateFilterItemListAtIndex(int index, Function(String) updateFn) =>
      filterItemList[index] = updateFn(filterItemList[index]);

  List<String> taskCategoryList = [
    'Recently assigned',
    'Due today',
    'Due tomorrow',
    'Due by this week'
  ];
  void addToTaskCategoryList(String item) => taskCategoryList.add(item);
  void removeFromTaskCategoryList(String item) => taskCategoryList.remove(item);
  void removeAtIndexFromTaskCategoryList(int index) =>
      taskCategoryList.removeAt(index);
  void insertAtIndexInTaskCategoryList(int index, String item) =>
      taskCategoryList.insert(index, item);
  void updateTaskCategoryListAtIndex(int index, Function(String) updateFn) =>
      taskCategoryList[index] = updateFn(taskCategoryList[index]);

  List<String> pendingTaskList = ['Task 1', 'Task 2', 'Task 3'];
  void addToPendingTaskList(String item) => pendingTaskList.add(item);
  void removeFromPendingTaskList(String item) => pendingTaskList.remove(item);
  void removeAtIndexFromPendingTaskList(int index) =>
      pendingTaskList.removeAt(index);
  void insertAtIndexInPendingTaskList(int index, String item) =>
      pendingTaskList.insert(index, item);
  void updatePendingTaskListAtIndex(int index, Function(String) updateFn) =>
      pendingTaskList[index] = updateFn(pendingTaskList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CircularProfileImage component.
  late CircularProfileImageModel circularProfileImageModel;

  @override
  void initState(BuildContext context) {
    circularProfileImageModel =
        createModel(context, () => CircularProfileImageModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    circularProfileImageModel.dispose();
  }
}
