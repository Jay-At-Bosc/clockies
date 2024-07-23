import '/flutter_flow/flutter_flow_util.dart';
import '/new_component/button/back_button/back_button_widget.dart';
import '/new_component/circular_profile_image/circular_profile_image_widget.dart';
import 'task_detail_screen_widget.dart' show TaskDetailScreenWidget;
import 'package:flutter/material.dart';

class TaskDetailScreenModel extends FlutterFlowModel<TaskDetailScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // Model for CircularProfileImage component.
  late CircularProfileImageModel circularProfileImageModel1;
  // Model for CircularProfileImage component.
  late CircularProfileImageModel circularProfileImageModel2;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
    circularProfileImageModel1 =
        createModel(context, () => CircularProfileImageModel());
    circularProfileImageModel2 =
        createModel(context, () => CircularProfileImageModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    backButtonModel.dispose();
    circularProfileImageModel1.dispose();
    circularProfileImageModel2.dispose();
  }
}
