import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'my_task_list_tile_model.dart';
export 'my_task_list_tile_model.dart';

class MyTaskListTileWidget extends StatefulWidget {
  const MyTaskListTileWidget({
    super.key,
    required this.parameter1,
    required this.parameter2,
  });

  final String? parameter1;
  final List<String>? parameter2;

  @override
  State<MyTaskListTileWidget> createState() => _MyTaskListTileWidgetState();
}

class _MyTaskListTileWidgetState extends State<MyTaskListTileWidget> {
  late MyTaskListTileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyTaskListTileModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {});

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        context.pushNamed('TaskDetailScreen');
      },
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 8.0),
          child: Container(
            width: double.infinity,
            color: Colors.white,
            child: ExpandableNotifier(
              controller: _model.expandableExpandableController,
              child: ExpandablePanel(
                header: Text(
                  widget.parameter1!,
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
                collapsed: Container(),
                expanded: Builder(
                  builder: (context) {
                    final pendingTask = widget.parameter2!.toList();

                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children:
                          List.generate(pendingTask.length, (pendingTaskIndex) {
                        final pendingTaskItem = pendingTask[pendingTaskIndex];
                        return Container(
                          decoration: const BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 16.0, 4.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.check_circle_outline_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          Text(
                                            pendingTaskItem,
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ].divide(const SizedBox(width: 16.0)),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            6.0, 4.0, 6.0, 4.0),
                                        child: Text(
                                          'Status',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                thickness: 0.5,
                                indent: 36.0,
                                endIndent: 0.0,
                                color: Color(0x3E57636C),
                              ),
                            ],
                          ),
                        );
                      }).divide(const SizedBox(height: 4.0)),
                    );
                  },
                ),
                theme: ExpandableThemeData(
                  tapHeaderToExpand: true,
                  tapBodyToExpand: false,
                  tapBodyToCollapse: false,
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  hasIcon: true,
                  expandIcon: Icons.arrow_drop_down,
                  collapseIcon: Icons.arrow_drop_up,
                  iconColor: FlutterFlowTheme.of(context).iconColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
