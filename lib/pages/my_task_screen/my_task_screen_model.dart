import '/backend/schema/structs/index.dart';
import '/components/custom_drawer_component/custom_drawer_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'my_task_screen_widget.dart' show MyTaskScreenWidget;
import 'package:flutter/material.dart';

class MyTaskScreenModel extends FlutterFlowModel<MyTaskScreenWidget> {
  ///  Local state fields for this page.

  bool isLoading = false;

  List<TaskModelStruct> myTaskList = [];
  void addToMyTaskList(TaskModelStruct item) => myTaskList.add(item);
  void removeFromMyTaskList(TaskModelStruct item) => myTaskList.remove(item);
  void removeAtIndexFromMyTaskList(int index) => myTaskList.removeAt(index);
  void insertAtIndexInMyTaskList(int index, TaskModelStruct item) =>
      myTaskList.insert(index, item);
  void updateMyTaskListAtIndex(int index, Function(TaskModelStruct) updateFn) =>
      myTaskList[index] = updateFn(myTaskList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ProjectListDropDown widget.
  String? projectListDropDownValue;
  FormFieldController<String>? projectListDropDownValueController;
  // Model for customDrawerComponent component.
  late CustomDrawerComponentModel customDrawerComponentModel;

  @override
  void initState(BuildContext context) {
    customDrawerComponentModel =
        createModel(context, () => CustomDrawerComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customDrawerComponentModel.dispose();
  }

  /// Action blocks.
  Future fetchMyTask(BuildContext context) async {}
}
