import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_task_widget.dart' show AddTaskWidget;
import 'package:flutter/material.dart';

class AddTaskModel extends FlutterFlowModel<AddTaskWidget> {
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

  bool sectionState = false;

  bool assignState = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TaskNameTextField widget.
  FocusNode? taskNameTextFieldFocusNode;
  TextEditingController? taskNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      taskNameTextFieldTextControllerValidator;
  String? _taskNameTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Task Name is required';
    }

    if (val.length < 5) {
      return 'Please enter a task name with at least 5 characters';
    }

    return null;
  }

  // State field(s) for DescriptionTextField widget.
  FocusNode? descriptionTextFieldFocusNode;
  TextEditingController? descriptionTextFieldTextController;
  String? Function(BuildContext, String?)?
      descriptionTextFieldTextControllerValidator;
  // State field(s) for ProjectTextField widget.
  FocusNode? projectTextFieldFocusNode;
  TextEditingController? projectTextFieldTextController;
  String? Function(BuildContext, String?)?
      projectTextFieldTextControllerValidator;
  // State field(s) for SectionDropDown widget.
  String? sectionDropDownValue;
  FormFieldController<String>? sectionDropDownValueController;
  // State field(s) for TaskTypeDropDown widget.
  String? taskTypeDropDownValue;
  FormFieldController<String>? taskTypeDropDownValueController;
  // State field(s) for StatusDropDown widget.
  String? statusDropDownValue;
  FormFieldController<String>? statusDropDownValueController;
  // State field(s) for AssignToDropDown widget.
  String? assignToDropDownValue;
  FormFieldController<String>? assignToDropDownValueController;
  // State field(s) for PlannedHoursTextField widget.
  FocusNode? plannedHoursTextFieldFocusNode;
  TextEditingController? plannedHoursTextFieldTextController;
  String? Function(BuildContext, String?)?
      plannedHoursTextFieldTextControllerValidator;
  // State field(s) for StartDateTextField widget.
  FocusNode? startDateTextFieldFocusNode;
  TextEditingController? startDateTextFieldTextController;
  String? Function(BuildContext, String?)?
      startDateTextFieldTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for EndDateTextField widget.
  FocusNode? endDateTextFieldFocusNode;
  TextEditingController? endDateTextFieldTextController;
  String? Function(BuildContext, String?)?
      endDateTextFieldTextControllerValidator;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {
    taskNameTextFieldTextControllerValidator =
        _taskNameTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    taskNameTextFieldFocusNode?.dispose();
    taskNameTextFieldTextController?.dispose();

    descriptionTextFieldFocusNode?.dispose();
    descriptionTextFieldTextController?.dispose();

    projectTextFieldFocusNode?.dispose();
    projectTextFieldTextController?.dispose();

    plannedHoursTextFieldFocusNode?.dispose();
    plannedHoursTextFieldTextController?.dispose();

    startDateTextFieldFocusNode?.dispose();
    startDateTextFieldTextController?.dispose();

    endDateTextFieldFocusNode?.dispose();
    endDateTextFieldTextController?.dispose();
  }
}
