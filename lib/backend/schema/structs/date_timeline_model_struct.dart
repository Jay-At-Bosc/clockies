// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DateTimelineModelStruct extends BaseStruct {
  DateTimelineModelStruct({
    String? type,
    String? string,
    Color? color,
  })  : _type = type,
        _string = string,
        _color = color;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "string" field.
  String? _string;
  String get string => _string ?? '';
  set string(String? val) => _string = val;

  bool hasString() => _string != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  set color(Color? val) => _color = val;

  bool hasColor() => _color != null;

  static DateTimelineModelStruct fromMap(Map<String, dynamic> data) =>
      DateTimelineModelStruct(
        type: data['type'] as String?,
        string: data['string'] as String?,
        color: getSchemaColor(data['color']),
      );

  static DateTimelineModelStruct? maybeFromMap(dynamic data) => data is Map
      ? DateTimelineModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'string': _string,
        'color': _color,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'string': serializeParam(
          _string,
          ParamType.String,
        ),
        'color': serializeParam(
          _color,
          ParamType.Color,
        ),
      }.withoutNulls;

  static DateTimelineModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DateTimelineModelStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        string: deserializeParam(
          data['string'],
          ParamType.String,
          false,
        ),
        color: deserializeParam(
          data['color'],
          ParamType.Color,
          false,
        ),
      );

  @override
  String toString() => 'DateTimelineModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DateTimelineModelStruct &&
        type == other.type &&
        string == other.string &&
        color == other.color;
  }

  @override
  int get hashCode => const ListEquality().hash([type, string, color]);
}

DateTimelineModelStruct createDateTimelineModelStruct({
  String? type,
  String? string,
  Color? color,
}) =>
    DateTimelineModelStruct(
      type: type,
      string: string,
      color: color,
    );
