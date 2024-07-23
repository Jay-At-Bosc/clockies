import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/new_component/button/back_button/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'task_detail_screen_model.dart';
export 'task_detail_screen_model.dart';

class TaskDetailScreenWidget extends StatefulWidget {
  const TaskDetailScreenWidget({super.key});

  @override
  State<TaskDetailScreenWidget> createState() => _TaskDetailScreenWidgetState();
}

class _TaskDetailScreenWidgetState extends State<TaskDetailScreenWidget> {
  late TaskDetailScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TaskDetailScreenModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      wrapWithModel(
                        model: _model.backButtonModel,
                        updateCallback: () => setState(() {}),
                        child: const BackButtonWidget(
                          size: 24,
                          color: Color(0xFF6F6F6F),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              Icons.check,
                              color: Color(0xFF6A6A6A),
                              size: 23.0,
                            ),
                            const Icon(
                              Icons.thumb_up_outlined,
                              color: Color(0x9657636C),
                              size: 24.0,
                            ),
                            const FaIcon(
                              FontAwesomeIcons.link,
                              color: Color(0xFF6F6F6F),
                              size: 24.0,
                            ),
                            const Icon(
                              Icons.keyboard_control_rounded,
                              color: Color(0x8057636C),
                              size: 24.0,
                            ),
                          ].divide(const SizedBox(width: 12.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Icon(
                      Icons.lock_sharp,
                      color: Color(0xFF6F6F6F),
                      size: 16.0,
                    ),
                    Text(
                      'Private to members of its projects',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Inter',
                                color: const Color(0xFF6F6F6F),
                                letterSpacing: 0.0,
                              ),
                    ),
                  ].divide(const SizedBox(width: 8.0)),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Task Name',
                      style: FlutterFlowTheme.of(context).displayLarge.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                    const Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
