import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'my_task_list_model.dart';
export 'my_task_list_model.dart';

class MyTaskListWidget extends StatefulWidget {
  const MyTaskListWidget({
    super.key,
    required this.parameter1,
    required this.parameter2,
  });

  final String? parameter1;
  final List<String>? parameter2;

  @override
  State<MyTaskListWidget> createState() => _MyTaskListWidgetState();
}

class _MyTaskListWidgetState extends State<MyTaskListWidget> {
  late MyTaskListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyTaskListModel());

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
        _model.selected = !_model.selected;
        setState(() {});
      },
      child: Container(
        decoration: const BoxDecoration(),
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: ExpandableNotifier(
            controller: _model.expandableExpandableController,
            child: ExpandablePanel(
              header: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Builder(
                    builder: (context) {
                      if (_model.selected) {
                        return Icon(
                          Icons.arrow_drop_up_sharp,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        );
                      } else {
                        return Icon(
                          Icons.arrow_drop_down_sharp,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        );
                      }
                    },
                  ),
                  Text(
                    widget.parameter1!,
                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
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
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ].divide(const SizedBox(width: 16.0)),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primary,
                                borderRadius: BorderRadius.circular(16.0),
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
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  );
                },
              ),
              theme: const ExpandableThemeData(
                tapHeaderToExpand: true,
                tapBodyToExpand: false,
                tapBodyToCollapse: false,
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                hasIcon: false,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
