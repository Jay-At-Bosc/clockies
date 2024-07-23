import '/flutter_flow/flutter_flow_util.dart';
import 'board_screen_widget.dart' show BoardScreenWidget;
import 'package:flutter/material.dart';

class BoardScreenModel extends FlutterFlowModel<BoardScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
