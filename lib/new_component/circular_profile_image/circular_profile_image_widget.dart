import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'circular_profile_image_model.dart';
export 'circular_profile_image_model.dart';

class CircularProfileImageWidget extends StatefulWidget {
  const CircularProfileImageWidget({
    super.key,
    required this.diameter,
  });

  final int? diameter;

  @override
  State<CircularProfileImageWidget> createState() =>
      _CircularProfileImageWidgetState();
}

class _CircularProfileImageWidgetState
    extends State<CircularProfileImageWidget> {
  late CircularProfileImageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CircularProfileImageModel());
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
        color: FlutterFlowTheme.of(context).secondaryText,
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          width: widget.diameter?.toDouble(),
          height: widget.diameter?.toDouble(),
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.network(
            'https://picsum.photos/seed/741/600',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
