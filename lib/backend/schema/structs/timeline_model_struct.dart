// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimelineModelStruct extends BaseStruct {
  TimelineModelStruct({
    int? id,
    String? startTime,
    String? stopTime,
    String? modifyiedBy,
    String? createdAt,
    String? updatedAt,
    int? taskId,
    TaskModelStruct? tasks,
  })  : _id = id,
        _startTime = startTime,
        _stopTime = stopTime,
        _modifyiedBy = modifyiedBy,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _taskId = taskId,
        _tasks = tasks;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "startTime" field.
  String? _startTime;
  String get startTime => _startTime ?? '';
  set startTime(String? val) => _startTime = val;

  bool hasStartTime() => _startTime != null;

  // "stopTime" field.
  String? _stopTime;
  String get stopTime => _stopTime ?? '';
  set stopTime(String? val) => _stopTime = val;

  bool hasStopTime() => _stopTime != null;

  // "modifyiedBy" field.
  String? _modifyiedBy;
  String get modifyiedBy => _modifyiedBy ?? '';
  set modifyiedBy(String? val) => _modifyiedBy = val;

  bool hasModifyiedBy() => _modifyiedBy != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "taskId" field.
  int? _taskId;
  int get taskId => _taskId ?? 0;
  set taskId(int? val) => _taskId = val;

  void incrementTaskId(int amount) => taskId = taskId + amount;

  bool hasTaskId() => _taskId != null;

  // "tasks" field.
  TaskModelStruct? _tasks;
  TaskModelStruct get tasks => _tasks ?? TaskModelStruct();
  set tasks(TaskModelStruct? val) => _tasks = val;

  void updateTasks(Function(TaskModelStruct) updateFn) {
    updateFn(_tasks ??= TaskModelStruct());
  }

  bool hasTasks() => _tasks != null;

  static TimelineModelStruct fromMap(Map<String, dynamic> data) =>
      TimelineModelStruct(
        id: castToType<int>(data['id']),
        startTime: data['startTime'] as String?,
        stopTime: data['stopTime'] as String?,
        modifyiedBy: data['modifyiedBy'] as String?,
        createdAt: data['createdAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
        taskId: castToType<int>(data['taskId']),
        tasks: TaskModelStruct.maybeFromMap(data['tasks']),
      );

  static TimelineModelStruct? maybeFromMap(dynamic data) => data is Map
      ? TimelineModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'startTime': _startTime,
        'stopTime': _stopTime,
        'modifyiedBy': _modifyiedBy,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'taskId': _taskId,
        'tasks': _tasks?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'startTime': serializeParam(
          _startTime,
          ParamType.String,
        ),
        'stopTime': serializeParam(
          _stopTime,
          ParamType.String,
        ),
        'modifyiedBy': serializeParam(
          _modifyiedBy,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updatedAt': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'taskId': serializeParam(
          _taskId,
          ParamType.int,
        ),
        'tasks': serializeParam(
          _tasks,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static TimelineModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      TimelineModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        startTime: deserializeParam(
          data['startTime'],
          ParamType.String,
          false,
        ),
        stopTime: deserializeParam(
          data['stopTime'],
          ParamType.String,
          false,
        ),
        modifyiedBy: deserializeParam(
          data['modifyiedBy'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updatedAt'],
          ParamType.String,
          false,
        ),
        taskId: deserializeParam(
          data['taskId'],
          ParamType.int,
          false,
        ),
        tasks: deserializeStructParam(
          data['tasks'],
          ParamType.DataStruct,
          false,
          structBuilder: TaskModelStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TimelineModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TimelineModelStruct &&
        id == other.id &&
        startTime == other.startTime &&
        stopTime == other.stopTime &&
        modifyiedBy == other.modifyiedBy &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        taskId == other.taskId &&
        tasks == other.tasks;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        startTime,
        stopTime,
        modifyiedBy,
        createdAt,
        updatedAt,
        taskId,
        tasks
      ]);
}

TimelineModelStruct createTimelineModelStruct({
  int? id,
  String? startTime,
  String? stopTime,
  String? modifyiedBy,
  String? createdAt,
  String? updatedAt,
  int? taskId,
  TaskModelStruct? tasks,
}) =>
    TimelineModelStruct(
      id: id,
      startTime: startTime,
      stopTime: stopTime,
      modifyiedBy: modifyiedBy,
      createdAt: createdAt,
      updatedAt: updatedAt,
      taskId: taskId,
      tasks: tasks ?? TaskModelStruct(),
    );
