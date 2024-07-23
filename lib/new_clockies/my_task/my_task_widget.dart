import '/components/my_task_list_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/new_component/circular_profile_image/circular_profile_image_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'my_task_model.dart';
export 'my_task_model.dart';

class MyTaskWidget extends StatefulWidget {
  const MyTaskWidget({super.key});

  @override
  State<MyTaskWidget> createState() => _MyTaskWidgetState();
}

class _MyTaskWidgetState extends State<MyTaskWidget> {
  late MyTaskModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyTaskModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.circularProfileImageModel,
                            updateCallback: () => setState(() {}),
                            child: const CircularProfileImageWidget(
                              diameter: 32,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'My Tasks',
                                style: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .override(
                                      fontFamily: 'Inter',
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              SizedBox(
                                width: 120.0,
                                height: 20.0,
                                child: custom_widgets.PopupMenuWidget(
                                  width: 120.0,
                                  height: 20.0,
                                  onItemSelected: (index) async {
                                    if ((index == 1) && (index != 0)) {
                                      context.pushNamed('BoardScreen');

                                      return;
                                    } else {
                                      context.pushNamed('CalenderScreen');

                                      return;
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                        ].divide(const SizedBox(width: 16.0)),
                      ),
                      Builder(
                        builder: (context) {
                          final item = _model.filterItemList.toList();

                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(item.length, (itemIndex) {
                                final itemItem = item[itemIndex];
                                return Container(
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 5.0, 10.0, 5.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.filter_list,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 14.0,
                                        ),
                                        Text(
                                          itemItem,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ].divide(const SizedBox(width: 4.0)),
                                    ),
                                  ),
                                );
                              }).divide(const SizedBox(width: 8.0)),
                            ),
                          );
                        },
                      ),
                    ].divide(const SizedBox(height: 8.0)),
                  ),
                ),
              ),
              Divider(
                thickness: 3.0,
                color: FlutterFlowTheme.of(context).secondaryText,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final taskCategoryListItem =
                          _model.taskCategoryList.toList();

                      return SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: List.generate(taskCategoryListItem.length,
                              (taskCategoryListItemIndex) {
                            final taskCategoryListItemItem =
                                taskCategoryListItem[taskCategoryListItemIndex];
                            return MyTaskListWidget(
                              key: Key(
                                  'Keykjn_${taskCategoryListItemIndex}_of_${taskCategoryListItem.length}'),
                              parameter1: taskCategoryListItemItem,
                              parameter2: _model.pendingTaskList,
                            );
                          }),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
