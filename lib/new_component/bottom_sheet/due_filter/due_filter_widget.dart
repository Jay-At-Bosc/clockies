import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'due_filter_model.dart';
export 'due_filter_model.dart';

class DueFilterWidget extends StatefulWidget {
  const DueFilterWidget({super.key});

  @override
  State<DueFilterWidget> createState() => _DueFilterWidgetState();
}

class _DueFilterWidgetState extends State<DueFilterWidget> {
  late DueFilterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DueFilterModel());
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
