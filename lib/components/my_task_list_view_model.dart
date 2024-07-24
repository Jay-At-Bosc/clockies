import '/flutter_flow/flutter_flow_util.dart';
import '/new_component/my_task_list_tile/my_task_list_tile_widget.dart';
import 'my_task_list_view_widget.dart' show MyTaskListViewWidget;
import 'package:flutter/material.dart';

class MyTaskListViewModel extends FlutterFlowModel<MyTaskListViewWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for MyTaskListTile dynamic component.
  late FlutterFlowDynamicModels<MyTaskListTileModel> myTaskListTileModels;

  @override
  void initState(BuildContext context) {
    myTaskListTileModels =
        FlutterFlowDynamicModels(() => MyTaskListTileModel());
  }

  @override
  void dispose() {
    myTaskListTileModels.dispose();
  }
}
