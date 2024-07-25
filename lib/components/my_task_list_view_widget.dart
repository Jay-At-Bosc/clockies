import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/new_component/my_task_list_tile/my_task_list_tile_widget.dart';
import 'package:flutter/material.dart';
import 'my_task_list_view_model.dart';
export 'my_task_list_view_model.dart';

class MyTaskListViewWidget extends StatefulWidget {
  const MyTaskListViewWidget({
    super.key,
    required this.data,
  });

  final MainTaskModelStruct? data;

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
          final myTaskSection = _model.sectionList.toList();

          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:
                  List.generate(myTaskSection.length, (myTaskSectionIndex) {
                final myTaskSectionItem = myTaskSection[myTaskSectionIndex];
                return MyTaskListTileWidget(
                  key: Key(
                      'Keycq2_${myTaskSectionIndex}_of_${myTaskSection.length}'),
                  myAllTaskList: widget.data!.rows,
                  section: myTaskSectionItem,
                  index: myTaskSectionIndex,
                );
              }).divide(const SizedBox(height: 4.0)),
            ),
          );
        },
      ),
    );
  }
}
