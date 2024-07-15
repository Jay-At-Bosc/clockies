import '/flutter_flow/flutter_flow_util.dart';
import 'edit_task_widget.dart' show EditTaskWidget;
import 'package:flutter/material.dart';

class EditTaskModel extends FlutterFlowModel<EditTaskWidget> {
  ///  Local state fields for this component.

  DateTime? startDate;

  DateTime? endDate;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  DateTime? datePicked1;
  // State field(s) for startTime widget.
  FocusNode? startTimeFocusNode;
  TextEditingController? startTimeTextController;
  String? Function(BuildContext, String?)? startTimeTextControllerValidator;
  // State field(s) for endTime widget.
  FocusNode? endTimeFocusNode;
  TextEditingController? endTimeTextController;
  String? Function(BuildContext, String?)? endTimeTextControllerValidator;
  DateTime? datePicked2;
  DateTime? datePicked3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    startTimeFocusNode?.dispose();
    startTimeTextController?.dispose();

    endTimeFocusNode?.dispose();
    endTimeTextController?.dispose();
  }
}
