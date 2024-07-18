// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TaskUserStruct extends BaseStruct {
  TaskUserStruct({
    String? userName,
  }) : _userName = userName;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;

  bool hasUserName() => _userName != null;

  static TaskUserStruct fromMap(Map<String, dynamic> data) => TaskUserStruct(
        userName: data['userName'] as String?,
      );

  static TaskUserStruct? maybeFromMap(dynamic data) =>
      data is Map ? TaskUserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'userName': _userName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userName': serializeParam(
          _userName,
          ParamType.String,
        ),
      }.withoutNulls;

  static TaskUserStruct fromSerializableMap(Map<String, dynamic> data) =>
      TaskUserStruct(
        userName: deserializeParam(
          data['userName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TaskUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TaskUserStruct && userName == other.userName;
  }

  @override
  int get hashCode => const ListEquality().hash([userName]);
}

TaskUserStruct createTaskUserStruct({
  String? userName,
}) =>
    TaskUserStruct(
      userName: userName,
    );
