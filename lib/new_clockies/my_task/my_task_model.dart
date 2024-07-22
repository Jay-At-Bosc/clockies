import '/flutter_flow/flutter_flow_util.dart';
import '/new_component/circular_profile_image/circular_profile_image_widget.dart';
import 'my_task_widget.dart' show MyTaskWidget;
import 'package:flutter/material.dart';

class MyTaskModel extends FlutterFlowModel<MyTaskWidget> {
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
