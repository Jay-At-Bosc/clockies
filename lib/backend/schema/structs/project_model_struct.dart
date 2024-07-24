// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjectModelStruct extends BaseStruct {
  ProjectModelStruct({
    int? id,
    String? projectName,
    int? totalHrs,
    bool? allowOverSpent,
    bool? allowManualTask,
    String? status,
    String? description,
    String? actualStartDate,
    String? actualEndDate,
    String? startDate,
    String? endDate,
    String? holdStarDate,
    String? holdEndDate,
    String? createdAt,
    String? updatedAt,
    int? clientId,
    int? taskCount,
    ClientsModelStruct? clients,
    ProjectMemberModelStruct? projectmember,
    String? totalTime,
  })  : _id = id,
        _projectName = projectName,
        _totalHrs = totalHrs,
        _allowOverSpent = allowOverSpent,
        _allowManualTask = allowManualTask,
        _status = status,
        _description = description,
        _actualStartDate = actualStartDate,
        _actualEndDate = actualEndDate,
        _startDate = startDate,
        _endDate = endDate,
        _holdStarDate = holdStarDate,
        _holdEndDate = holdEndDate,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _clientId = clientId,
        _taskCount = taskCount,
        _clients = clients,
        _projectmember = projectmember,
        _totalTime = totalTime;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "projectName" field.
  String? _projectName;
  String get projectName => _projectName ?? '';
  set projectName(String? val) => _projectName = val;

  bool hasProjectName() => _projectName != null;

  // "totalHrs" field.
  int? _totalHrs;
  int get totalHrs => _totalHrs ?? 0;
  set totalHrs(int? val) => _totalHrs = val;

  void incrementTotalHrs(int amount) => totalHrs = totalHrs + amount;

  bool hasTotalHrs() => _totalHrs != null;

  // "allowOverSpent" field.
  bool? _allowOverSpent;
  bool get allowOverSpent => _allowOverSpent ?? false;
  set allowOverSpent(bool? val) => _allowOverSpent = val;

  bool hasAllowOverSpent() => _allowOverSpent != null;

  // "allowManualTask" field.
  bool? _allowManualTask;
  bool get allowManualTask => _allowManualTask ?? false;
  set allowManualTask(bool? val) => _allowManualTask = val;

  bool hasAllowManualTask() => _allowManualTask != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "actualStartDate" field.
  String? _actualStartDate;
  String get actualStartDate => _actualStartDate ?? '';
  set actualStartDate(String? val) => _actualStartDate = val;

  bool hasActualStartDate() => _actualStartDate != null;

  // "actualEndDate" field.
  String? _actualEndDate;
  String get actualEndDate => _actualEndDate ?? '';
  set actualEndDate(String? val) => _actualEndDate = val;

  bool hasActualEndDate() => _actualEndDate != null;

  // "startDate" field.
  String? _startDate;
  String get startDate => _startDate ?? '';
  set startDate(String? val) => _startDate = val;

  bool hasStartDate() => _startDate != null;

  // "endDate" field.
  String? _endDate;
  String get endDate => _endDate ?? '';
  set endDate(String? val) => _endDate = val;

  bool hasEndDate() => _endDate != null;

  // "holdStarDate" field.
  String? _holdStarDate;
  String get holdStarDate => _holdStarDate ?? '';
  set holdStarDate(String? val) => _holdStarDate = val;

  bool hasHoldStarDate() => _holdStarDate != null;

  // "holdEndDate" field.
  String? _holdEndDate;
  String get holdEndDate => _holdEndDate ?? '';
  set holdEndDate(String? val) => _holdEndDate = val;

  bool hasHoldEndDate() => _holdEndDate != null;

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

  // "clientId" field.
  int? _clientId;
  int get clientId => _clientId ?? 0;
  set clientId(int? val) => _clientId = val;

  void incrementClientId(int amount) => clientId = clientId + amount;

  bool hasClientId() => _clientId != null;

  // "taskCount" field.
  int? _taskCount;
  int get taskCount => _taskCount ?? 0;
  set taskCount(int? val) => _taskCount = val;

  void incrementTaskCount(int amount) => taskCount = taskCount + amount;

  bool hasTaskCount() => _taskCount != null;

  // "clients" field.
  ClientsModelStruct? _clients;
  ClientsModelStruct get clients => _clients ?? ClientsModelStruct();
  set clients(ClientsModelStruct? val) => _clients = val;

  void updateClients(Function(ClientsModelStruct) updateFn) {
    updateFn(_clients ??= ClientsModelStruct());
  }

  bool hasClients() => _clients != null;

  // "projectmember" field.
  ProjectMemberModelStruct? _projectmember;
  ProjectMemberModelStruct get projectmember =>
      _projectmember ?? ProjectMemberModelStruct();
  set projectmember(ProjectMemberModelStruct? val) => _projectmember = val;

  void updateProjectmember(Function(ProjectMemberModelStruct) updateFn) {
    updateFn(_projectmember ??= ProjectMemberModelStruct());
  }

  bool hasProjectmember() => _projectmember != null;

  // "total_time" field.
  String? _totalTime;
  String get totalTime => _totalTime ?? '';
  set totalTime(String? val) => _totalTime = val;

  bool hasTotalTime() => _totalTime != null;

  static ProjectModelStruct fromMap(Map<String, dynamic> data) =>
      ProjectModelStruct(
        id: castToType<int>(data['id']),
        projectName: data['projectName'] as String?,
        totalHrs: castToType<int>(data['totalHrs']),
        allowOverSpent: data['allowOverSpent'] as bool?,
        allowManualTask: data['allowManualTask'] as bool?,
        status: data['status'] as String?,
        description: data['description'] as String?,
        actualStartDate: data['actualStartDate'] as String?,
        actualEndDate: data['actualEndDate'] as String?,
        startDate: data['startDate'] as String?,
        endDate: data['endDate'] as String?,
        holdStarDate: data['holdStarDate'] as String?,
        holdEndDate: data['holdEndDate'] as String?,
        createdAt: data['createdAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
        clientId: castToType<int>(data['clientId']),
        taskCount: castToType<int>(data['taskCount']),
        clients: ClientsModelStruct.maybeFromMap(data['clients']),
        projectmember:
            ProjectMemberModelStruct.maybeFromMap(data['projectmember']),
        totalTime: data['total_time'] as String?,
      );

  static ProjectModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ProjectModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'projectName': _projectName,
        'totalHrs': _totalHrs,
        'allowOverSpent': _allowOverSpent,
        'allowManualTask': _allowManualTask,
        'status': _status,
        'description': _description,
        'actualStartDate': _actualStartDate,
        'actualEndDate': _actualEndDate,
        'startDate': _startDate,
        'endDate': _endDate,
        'holdStarDate': _holdStarDate,
        'holdEndDate': _holdEndDate,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'clientId': _clientId,
        'taskCount': _taskCount,
        'clients': _clients?.toMap(),
        'projectmember': _projectmember?.toMap(),
        'total_time': _totalTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'projectName': serializeParam(
          _projectName,
          ParamType.String,
        ),
        'totalHrs': serializeParam(
          _totalHrs,
          ParamType.int,
        ),
        'allowOverSpent': serializeParam(
          _allowOverSpent,
          ParamType.bool,
        ),
        'allowManualTask': serializeParam(
          _allowManualTask,
          ParamType.bool,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'actualStartDate': serializeParam(
          _actualStartDate,
          ParamType.String,
        ),
        'actualEndDate': serializeParam(
          _actualEndDate,
          ParamType.String,
        ),
        'startDate': serializeParam(
          _startDate,
          ParamType.String,
        ),
        'endDate': serializeParam(
          _endDate,
          ParamType.String,
        ),
        'holdStarDate': serializeParam(
          _holdStarDate,
          ParamType.String,
        ),
        'holdEndDate': serializeParam(
          _holdEndDate,
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
        'clientId': serializeParam(
          _clientId,
          ParamType.int,
        ),
        'taskCount': serializeParam(
          _taskCount,
          ParamType.int,
        ),
        'clients': serializeParam(
          _clients,
          ParamType.DataStruct,
        ),
        'projectmember': serializeParam(
          _projectmember,
          ParamType.DataStruct,
        ),
        'total_time': serializeParam(
          _totalTime,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProjectModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProjectModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        projectName: deserializeParam(
          data['projectName'],
          ParamType.String,
          false,
        ),
        totalHrs: deserializeParam(
          data['totalHrs'],
          ParamType.int,
          false,
        ),
        allowOverSpent: deserializeParam(
          data['allowOverSpent'],
          ParamType.bool,
          false,
        ),
        allowManualTask: deserializeParam(
          data['allowManualTask'],
          ParamType.bool,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        actualStartDate: deserializeParam(
          data['actualStartDate'],
          ParamType.String,
          false,
        ),
        actualEndDate: deserializeParam(
          data['actualEndDate'],
          ParamType.String,
          false,
        ),
        startDate: deserializeParam(
          data['startDate'],
          ParamType.String,
          false,
        ),
        endDate: deserializeParam(
          data['endDate'],
          ParamType.String,
          false,
        ),
        holdStarDate: deserializeParam(
          data['holdStarDate'],
          ParamType.String,
          false,
        ),
        holdEndDate: deserializeParam(
          data['holdEndDate'],
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
        clientId: deserializeParam(
          data['clientId'],
          ParamType.int,
          false,
        ),
        taskCount: deserializeParam(
          data['taskCount'],
          ParamType.int,
          false,
        ),
        clients: deserializeStructParam(
          data['clients'],
          ParamType.DataStruct,
          false,
          structBuilder: ClientsModelStruct.fromSerializableMap,
        ),
        projectmember: deserializeStructParam(
          data['projectmember'],
          ParamType.DataStruct,
          false,
          structBuilder: ProjectMemberModelStruct.fromSerializableMap,
        ),
        totalTime: deserializeParam(
          data['total_time'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProjectModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProjectModelStruct &&
        id == other.id &&
        projectName == other.projectName &&
        totalHrs == other.totalHrs &&
        allowOverSpent == other.allowOverSpent &&
        allowManualTask == other.allowManualTask &&
        status == other.status &&
        description == other.description &&
        actualStartDate == other.actualStartDate &&
        actualEndDate == other.actualEndDate &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        holdStarDate == other.holdStarDate &&
        holdEndDate == other.holdEndDate &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        clientId == other.clientId &&
        taskCount == other.taskCount &&
        clients == other.clients &&
        projectmember == other.projectmember &&
        totalTime == other.totalTime;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        projectName,
        totalHrs,
        allowOverSpent,
        allowManualTask,
        status,
        description,
        actualStartDate,
        actualEndDate,
        startDate,
        endDate,
        holdStarDate,
        holdEndDate,
        createdAt,
        updatedAt,
        clientId,
        taskCount,
        clients,
        projectmember,
        totalTime
      ]);
}

ProjectModelStruct createProjectModelStruct({
  int? id,
  String? projectName,
  int? totalHrs,
  bool? allowOverSpent,
  bool? allowManualTask,
  String? status,
  String? description,
  String? actualStartDate,
  String? actualEndDate,
  String? startDate,
  String? endDate,
  String? holdStarDate,
  String? holdEndDate,
  String? createdAt,
  String? updatedAt,
  int? clientId,
  int? taskCount,
  ClientsModelStruct? clients,
  ProjectMemberModelStruct? projectmember,
  String? totalTime,
}) =>
    ProjectModelStruct(
      id: id,
      projectName: projectName,
      totalHrs: totalHrs,
      allowOverSpent: allowOverSpent,
      allowManualTask: allowManualTask,
      status: status,
      description: description,
      actualStartDate: actualStartDate,
      actualEndDate: actualEndDate,
      startDate: startDate,
      endDate: endDate,
      holdStarDate: holdStarDate,
      holdEndDate: holdEndDate,
      createdAt: createdAt,
      updatedAt: updatedAt,
      clientId: clientId,
      taskCount: taskCount,
      clients: clients ?? ClientsModelStruct(),
      projectmember: projectmember ?? ProjectMemberModelStruct(),
      totalTime: totalTime,
    );
