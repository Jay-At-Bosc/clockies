import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'filter_option_model.dart';
export 'filter_option_model.dart';

class FilterOptionWidget extends StatefulWidget {
  const FilterOptionWidget({super.key});

  @override
  State<FilterOptionWidget> createState() => _FilterOptionWidgetState();
}

class _FilterOptionWidgetState extends State<FilterOptionWidget> {
  late FilterOptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterOptionModel());
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
