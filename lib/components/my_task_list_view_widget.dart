import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/new_component/my_task_list_tile/my_task_list_tile_widget.dart';
import 'package:flutter/material.dart';
import 'my_task_list_view_model.dart';
export 'my_task_list_view_model.dart';

class MyTaskListViewWidget extends StatefulWidget {
  const MyTaskListViewWidget({
    super.key,
    required this.parameter1,
    required this.parameter2,
  });

  final List<String>? parameter1;
  final List<String>? parameter2;

  @override
  State<MyTaskListViewWidget> createState() => _MyTaskListViewWidgetState();
}

class _MyTaskListViewWidgetState extends State<MyTaskListViewWidget> {
  late MyTaskListViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyTaskListViewModel());
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
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Builder(
        builder: (context) {
          final taskCategoryListItem = widget.parameter2!.toList();

          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(taskCategoryListItem.length,
                  (taskCategoryListItemIndex) {
                final taskCategoryListItemItem =
                    taskCategoryListItem[taskCategoryListItemIndex];
                return wrapWithModel(
                  model: _model.myTaskListTileModels.getModel(
                    taskCategoryListItemIndex.toString(),
                    taskCategoryListItemIndex,
                  ),
                  updateCallback: () => setState(() {}),
                  child: MyTaskListTileWidget(
                    key: Key(
                      'Keycq2_${taskCategoryListItemIndex.toString()}',
                    ),
                    parameter1: taskCategoryListItemItem,
                    parameter2: widget.parameter1!,
                  ),
                );
              }).divide(const SizedBox(height: 4.0)),
            ),
          );
        },
      ),
    );
  }
}
