import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'list_screen_view_model.dart';
export 'list_screen_view_model.dart';

class ListScreenViewWidget extends StatefulWidget {
  const ListScreenViewWidget({super.key});

  @override
  State<ListScreenViewWidget> createState() => _ListScreenViewWidgetState();
}

class _ListScreenViewWidgetState extends State<ListScreenViewWidget> {
  late ListScreenViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListScreenViewModel());
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
