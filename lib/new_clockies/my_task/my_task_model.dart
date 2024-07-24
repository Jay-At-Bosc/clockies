import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/my_task_list_view_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/new_component/circular_profile_image/circular_profile_image_widget.dart';
import '/custom_code/actions/index.dart' as actions;
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

  List<String> listViewSectionList = [
    'Recently assigned',
    'Due today',
    'Due tomorrow',
    'Due by this week'
  ];
  void addToListViewSectionList(String item) => listViewSectionList.add(item);
  void removeFromListViewSectionList(String item) =>
      listViewSectionList.remove(item);
  void removeAtIndexFromListViewSectionList(int index) =>
      listViewSectionList.removeAt(index);
  void insertAtIndexInListViewSectionList(int index, String item) =>
      listViewSectionList.insert(index, item);
  void updateListViewSectionListAtIndex(int index, Function(String) updateFn) =>
      listViewSectionList[index] = updateFn(listViewSectionList[index]);

  List<String> pendingTaskList = ['Task 1', 'Task 2', 'Task 3'];
  void addToPendingTaskList(String item) => pendingTaskList.add(item);
  void removeFromPendingTaskList(String item) => pendingTaskList.remove(item);
  void removeAtIndexFromPendingTaskList(int index) =>
      pendingTaskList.removeAt(index);
  void insertAtIndexInPendingTaskList(int index, String item) =>
      pendingTaskList.insert(index, item);
  void updatePendingTaskListAtIndex(int index, Function(String) updateFn) =>
      pendingTaskList[index] = updateFn(pendingTaskList[index]);

  MainTaskModelStruct? myTaskData;
  void updateMyTaskDataStruct(Function(MainTaskModelStruct) updateFn) {
    updateFn(myTaskData ??= MainTaskModelStruct());
  }

  bool isLoading = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CircularProfileImage component.
  late CircularProfileImageModel circularProfileImageModel;
  // Model for MyTaskListView component.
  late MyTaskListViewModel myTaskListViewModel;

  @override
  void initState(BuildContext context) {
    circularProfileImageModel =
        createModel(context, () => CircularProfileImageModel());
    myTaskListViewModel = createModel(context, () => MyTaskListViewModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    circularProfileImageModel.dispose();
    myTaskListViewModel.dispose();
  }

  /// Action blocks.
  Future getMyTask(BuildContext context) async {
    bool? hasInternetGetMyTask;
    ApiCallResponse? getMyTasksResponse;

    hasInternetGetMyTask = await actions.checkInternetWithSnackbar(
      context,
    );
    if (hasInternetGetMyTask) {
      getMyTasksResponse = await ClockiesAPIGroup.fetchMyTaskssCall.call(
        authToken: FFAppState().userToken,
        pageSize: 10,
      );

      if ((getMyTasksResponse.succeeded ?? true)) {
        myTaskData = MainTaskModelStruct.maybeFromMap(
            ClockiesAPIGroup.fetchMyTaskssCall.myTaskData(
          (getMyTasksResponse.jsonBody ?? ''),
        ));
        return;
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Response Failed',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
            duration: const Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).secondary,
          ),
        );
        return;
      }
    } else {
      return;
    }
  }
}
