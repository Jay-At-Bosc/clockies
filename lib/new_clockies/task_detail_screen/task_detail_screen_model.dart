import '/flutter_flow/flutter_flow_util.dart';
import '/new_component/button/back_button/back_button_widget.dart';
import '/new_component/circular_profile_image/circular_profile_image_widget.dart';
import '/new_component/shimmers/task_detail_screen_shimmer/task_detail_screen_shimmer_widget.dart';
import 'task_detail_screen_widget.dart' show TaskDetailScreenWidget;
import 'package:flutter/material.dart';

class TaskDetailScreenModel extends FlutterFlowModel<TaskDetailScreenWidget> {
  ///  Local state fields for this page.

  bool isCompleted = false;

  bool isLoading = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // Model for CircularProfileImage component.
  late CircularProfileImageModel circularProfileImageModel;
  // Model for TaskDetailScreenShimmer component.
  late TaskDetailScreenShimmerModel taskDetailScreenShimmerModel;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
    circularProfileImageModel =
        createModel(context, () => CircularProfileImageModel());
    taskDetailScreenShimmerModel =
        createModel(context, () => TaskDetailScreenShimmerModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    backButtonModel.dispose();
    circularProfileImageModel.dispose();
    taskDetailScreenShimmerModel.dispose();
  }
}
