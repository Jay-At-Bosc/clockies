import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'task_detail_screen_shimmer_model.dart';
export 'task_detail_screen_shimmer_model.dart';

class TaskDetailScreenShimmerWidget extends StatefulWidget {
  const TaskDetailScreenShimmerWidget({super.key});

  @override
  State<TaskDetailScreenShimmerWidget> createState() =>
      _TaskDetailScreenShimmerWidgetState();
}

class _TaskDetailScreenShimmerWidgetState
    extends State<TaskDetailScreenShimmerWidget> {
  late TaskDetailScreenShimmerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TaskDetailScreenShimmerModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 0.4,
                height: 10.0,
                decoration: const BoxDecoration(
                  color: Color(0xFFF1EFEF),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.1,
                height: 10.0,
                decoration: const BoxDecoration(
                  color: Color(0xFFF1EFEF),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 16.0,
                height: 16.0,
                decoration: BoxDecoration(
                  color: const Color(0xFFF1EFEF),
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.4,
                    height: 5.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1EFEF),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.4,
                    height: 5.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1EFEF),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ].divide(const SizedBox(height: 16.0)),
      ),
    );
  }
}
