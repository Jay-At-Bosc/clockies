import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/task_edit_delete_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'timeline_model.dart';
export 'timeline_model.dart';

class TimelineWidget extends StatefulWidget {
  const TimelineWidget({super.key});

  @override
  State<TimelineWidget> createState() => _TimelineWidgetState();
}

class _TimelineWidgetState extends State<TimelineWidget> {
  late TimelineModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TimelineModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isLoading = true;
      setState(() {});
      _model.onPageTimelineTask = await FetchTimelineAPICall.call(
        startTime: functions.startDateFormat(getCurrentTimestamp),
        stopTime: functions.endTimeFormat(getCurrentTimestamp),
        authToken: FFAppState().userToken,
      );

      if ((_model.onPageTimelineTask?.succeeded ?? true)) {
        _model.taskList = FetchTimelineAPICall.responseTimelineTask(
          (_model.onPageTimelineTask?.jsonBody ?? ''),
        )!
            .map((e) => TimelineModelStruct.maybeFromMap(e))
            .withoutNulls
            .toList()
            .toList()
            .cast<TimelineModelStruct>();
        setState(() {});
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              FetchTimelineAPICall.responseMessage(
                (_model.onPageTimelineTask?.jsonBody ?? ''),
              )!,
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
            duration: const Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).error,
          ),
        );
      }

      _model.isLoading = false;
      setState(() {});
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: const Drawer(
          elevation: 16.0,
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              scaffoldKey.currentState!.openDrawer();
            },
            child: Icon(
              Icons.menu,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
          ),
          title: Text(
            FFAppConstants.timeLine,
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: 'Inter',
                  color: FlutterFlowTheme.of(context).primaryText,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Builder(
            builder: (context) {
              if (!_model.isLoading) {
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  final datePickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: getCurrentTimestamp,
                                    firstDate:
                                        (DateTime.fromMicrosecondsSinceEpoch(
                                                1576866600000000) ??
                                            DateTime(1900)),
                                    lastDate:
                                        (getCurrentTimestamp ?? DateTime(2050)),
                                    builder: (context, child) {
                                      return wrapInMaterialDatePickerTheme(
                                        context,
                                        child!,
                                        headerBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        headerForegroundColor:
                                            FlutterFlowTheme.of(context).info,
                                        headerTextStyle:
                                            FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  fontSize: 32.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                        pickerBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        pickerForegroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        selectedDateTimeBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        selectedDateTimeForegroundColor:
                                            FlutterFlowTheme.of(context).info,
                                        actionButtonForegroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        iconSize: 24.0,
                                      );
                                    },
                                  );

                                  if (datePickedDate != null) {
                                    safeSetState(() {
                                      _model.datePicked = DateTime(
                                        datePickedDate.year,
                                        datePickedDate.month,
                                        datePickedDate.day,
                                      );
                                    });
                                  }
                                  _model.isDatePicked = false;
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.calendar_today,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  _model.isDatePicked
                                      ? dateTimeFormat(
                                          'd/M/y', getCurrentTimestamp)
                                      : dateTimeFormat(
                                          'yMd', _model.datePicked),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ].divide(const SizedBox(width: 10.0)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, -1.0),
                                child: Text(
                                  'Total Time',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  dateTimeFormat('Hm', getCurrentTimestamp),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontSize: 28.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final timeLineTasks = _model.taskList.toList();

                          return ListView.separated(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: timeLineTasks.length,
                            separatorBuilder: (_, __) => const SizedBox(height: 16.0),
                            itemBuilder: (context, timeLineTasksIndex) {
                              final timeLineTasksItem =
                                  timeLineTasks[timeLineTasksIndex];
                              return Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Text(
                                                '3h 32m',
                                                maxLines: 1,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Text(
                                                '${functions.convertToLocalTime(timeLineTasksItem.startTime)} - ${functions.convertToLocalTime(timeLineTasksItem.stopTime)}',
                                                maxLines: 1,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Text(
                                                timeLineTasksItem
                                                    .tasks.taskName,
                                                maxLines: 1,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Text(
                                                '${timeLineTasksItem.tasks.projects.clients.clientName} ➔ ${timeLineTasksItem.tasks.projects.projectName}',
                                                maxLines: 1,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Builder(
                                                builder: (context) => InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await showDialog(
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: const AlignmentDirectional(
                                                                  1.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child:
                                                              GestureDetector(
                                                            onTap: () => _model
                                                                    .unfocusNode
                                                                    .canRequestFocus
                                                                ? FocusScope.of(
                                                                        context)
                                                                    .requestFocus(
                                                                        _model
                                                                            .unfocusNode)
                                                                : FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child: SizedBox(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.5,
                                                              child:
                                                                  const TaskEditDeleteWidget(),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));
                                                  },
                                                  child: Icon(
                                                    Icons.more_vert,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 24.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(width: 10.0)),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                );
              } else {
                return Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Lottie.asset(
                    'assets/lottie_animations/Animation_-_1718873537938.json',
                    width: 150.0,
                    height: 130.0,
                    fit: BoxFit.cover,
                    animate: true,
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
