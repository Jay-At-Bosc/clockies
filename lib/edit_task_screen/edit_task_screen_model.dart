import '/flutter_flow/flutter_flow_util.dart';
import 'edit_task_screen_widget.dart' show EditTaskScreenWidget;
import 'package:flutter/material.dart';

class EditTaskScreenModel extends FlutterFlowModel<EditTaskScreenWidget> {
  ///  Local state fields for this page.

  DateTime? startDate;

  DateTime? endDate;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
