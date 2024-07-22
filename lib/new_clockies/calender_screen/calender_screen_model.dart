import '/flutter_flow/flutter_flow_util.dart';
import 'calender_screen_widget.dart' show CalenderScreenWidget;
import 'package:flutter/material.dart';

class CalenderScreenModel extends FlutterFlowModel<CalenderScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
