import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_project_dialog_widget.dart' show AddProjectDialogWidget;
import 'package:flutter/material.dart';

class AddProjectDialogModel extends FlutterFlowModel<AddProjectDialogWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ProjectNameTextField widget.
  FocusNode? projectNameTextFieldFocusNode;
  TextEditingController? projectNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      projectNameTextFieldTextControllerValidator;
  String? _projectNameTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please provide a project name';
    }

    if (val.length < 2) {
      return 'Please enter a project name with at least 2 characters';
    }
    if (val.length > 60) {
      return 'Please enter a project name with no more than 60 characters';
    }

    return null;
  }

  // State field(s) for ClientDropDown widget.
  String? clientDropDownValue;
  FormFieldController<String>? clientDropDownValueController;
  // State field(s) for ProjectHoursTextField widget.
  FocusNode? projectHoursTextFieldFocusNode;
  TextEditingController? projectHoursTextFieldTextController;
  String? Function(BuildContext, String?)?
      projectHoursTextFieldTextControllerValidator;
  String? _projectHoursTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please provide project budget hours';
    }

    return null;
  }

  // State field(s) for StartDateTextField widget.
  FocusNode? startDateTextFieldFocusNode;
  TextEditingController? startDateTextFieldTextController;
  String? Function(BuildContext, String?)?
      startDateTextFieldTextControllerValidator;
  String? _startDateTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Start Date is required';
    }

    return null;
  }

  DateTime? datePicked1;
  // State field(s) for EndDateTextField widget.
  FocusNode? endDateTextFieldFocusNode;
  TextEditingController? endDateTextFieldTextController;
  String? Function(BuildContext, String?)?
      endDateTextFieldTextControllerValidator;
  String? _endDateTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'End Date is required';
    }

    return null;
  }

  DateTime? datePicked2;
  // State field(s) for ExcessHourCheckboxListTile widget.
  bool? excessHourCheckboxListTileValue;
  // State field(s) for ManualEntryCheckboxListTile widget.
  bool? manualEntryCheckboxListTileValue;

  @override
  void initState(BuildContext context) {
    projectNameTextFieldTextControllerValidator =
        _projectNameTextFieldTextControllerValidator;
    projectHoursTextFieldTextControllerValidator =
        _projectHoursTextFieldTextControllerValidator;
    startDateTextFieldTextControllerValidator =
        _startDateTextFieldTextControllerValidator;
    endDateTextFieldTextControllerValidator =
        _endDateTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    projectNameTextFieldFocusNode?.dispose();
    projectNameTextFieldTextController?.dispose();

    projectHoursTextFieldFocusNode?.dispose();
    projectHoursTextFieldTextController?.dispose();

    startDateTextFieldFocusNode?.dispose();
    startDateTextFieldTextController?.dispose();

    endDateTextFieldFocusNode?.dispose();
    endDateTextFieldTextController?.dispose();
  }

  /// Action blocks.
  Future addProjectAPI(BuildContext context) async {
    ApiCallResponse? createProjectApiResult;

    createProjectApiResult = await CreateNewProjectCall.call(
      authToken: FFAppState().userToken,
      projectName: projectNameTextFieldTextController.text.trim(),
      totalHrs: projectHoursTextFieldTextController.text,
      allowOverSpent: excessHourCheckboxListTileValue,
      allowManualTask: manualEntryCheckboxListTileValue,
      status: Status.active.name,
      description: ' ',
      clientId: FFAppState()
          .clientData
          .where((e) => e.clientName == clientDropDownValue)
          .toList()
          .first
          .id,
      startDate: startDateTextFieldTextController.text,
      endDate: endDateTextFieldTextController.text,
    );

    if ((createProjectApiResult.succeeded ?? true)) {
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            getJsonField(
              (createProjectApiResult.jsonBody ?? ''),
              r'''$.message''',
            ).toString().toString(),
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Inter',
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                ),
          ),
          duration: const Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).borderColor,
        ),
      );
    } else {
      Navigator.pop(context);
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            getJsonField(
              (createProjectApiResult.jsonBody ?? ''),
              r'''$.message''',
            ).toString().toString(),
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Inter',
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                ),
          ),
          duration: const Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).checkedColor,
        ),
      );
    }
  }
}
