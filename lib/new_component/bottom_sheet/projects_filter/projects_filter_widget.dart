import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'projects_filter_model.dart';
export 'projects_filter_model.dart';

class ProjectsFilterWidget extends StatefulWidget {
  const ProjectsFilterWidget({super.key});

  @override
  State<ProjectsFilterWidget> createState() => _ProjectsFilterWidgetState();
}

class _ProjectsFilterWidgetState extends State<ProjectsFilterWidget> {
  late ProjectsFilterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProjectsFilterModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
