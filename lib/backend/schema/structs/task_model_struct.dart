// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TaskModelStruct extends BaseStruct {
  TaskModelStruct({
    int? id,
    String? taskName,
    String? startDate,
    String? endDate,
    String? description,
    String? status,
    int? plannedHours,
    String? taskType,
    int? parentTaskId,
    int? sectionId,
    int? createdBy,
    String? createdAt,
    String? updatedAt,
    int? projectId,
    int? userId,
    int? consumedHours,
    ProjectModelStruct? projects,
    String? issueType,
    TaskUserStruct? user,
    String? earnedPoints,
    String? completedAt,
  })  : _id = id,
        _taskName = taskName,
        _startDate = startDate,
        _endDate = endDate,
        _description = description,
        _status = status,
        _plannedHours = plannedHours,
        _taskType = taskType,
        _parentTaskId = parentTaskId,
        _sectionId = sectionId,
        _createdBy = createdBy,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _projectId = projectId,
        _userId = userId,
        _consumedHours = consumedHours,
        _projects = projects,
        _issueType = issueType,
        _user = user,
        _earnedPoints = earnedPoints,
        _completedAt = completedAt;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "taskName" field.
  String? _taskName;
  String get taskName => _taskName ?? '';
  set taskName(String? val) => _taskName = val;

  bool hasTaskName() => _taskName != null;

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

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "plannedHours" field.
  int? _plannedHours;
  int get plannedHours => _plannedHours ?? 0;
  set plannedHours(int? val) => _plannedHours = val;

  void incrementPlannedHours(int amount) =>
      plannedHours = plannedHours + amount;

  bool hasPlannedHours() => _plannedHours != null;

  // "taskType" field.
  String? _taskType;
  String get taskType => _taskType ?? '';
  set taskType(String? val) => _taskType = val;

  bool hasTaskType() => _taskType != null;

  // "parentTaskId" field.
  int? _parentTaskId;
  int get parentTaskId => _parentTaskId ?? 0;
  set parentTaskId(int? val) => _parentTaskId = val;

  void incrementParentTaskId(int amount) =>
      parentTaskId = parentTaskId + amount;

  bool hasParentTaskId() => _parentTaskId != null;

  // "sectionId" field.
  int? _sectionId;
  int get sectionId => _sectionId ?? 0;
  set sectionId(int? val) => _sectionId = val;

  void incrementSectionId(int amount) => sectionId = sectionId + amount;

  bool hasSectionId() => _sectionId != null;

  // "createdBy" field.
  int? _createdBy;
  int get createdBy => _createdBy ?? 0;
  set createdBy(int? val) => _createdBy = val;

  void incrementCreatedBy(int amount) => createdBy = createdBy + amount;

  bool hasCreatedBy() => _createdBy != null;

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

  // "projectId" field.
  int? _projectId;
  int get projectId => _projectId ?? 0;
  set projectId(int? val) => _projectId = val;

  void incrementProjectId(int amount) => projectId = projectId + amount;

  bool hasProjectId() => _projectId != null;

  // "userId" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "consumedHours" field.
  int? _consumedHours;
  int get consumedHours => _consumedHours ?? 0;
  set consumedHours(int? val) => _consumedHours = val;

  void incrementConsumedHours(int amount) =>
      consumedHours = consumedHours + amount;

  bool hasConsumedHours() => _consumedHours != null;

  // "projects" field.
  ProjectModelStruct? _projects;
  ProjectModelStruct get projects => _projects ?? ProjectModelStruct();
  set projects(ProjectModelStruct? val) => _projects = val;

  void updateProjects(Function(ProjectModelStruct) updateFn) {
    updateFn(_projects ??= ProjectModelStruct());
  }

  bool hasProjects() => _projects != null;

  // "issueType" field.
  String? _issueType;
  String get issueType => _issueType ?? '';
  set issueType(String? val) => _issueType = val;

  bool hasIssueType() => _issueType != null;

  // "user" field.
  TaskUserStruct? _user;
  TaskUserStruct get user => _user ?? TaskUserStruct();
  set user(TaskUserStruct? val) => _user = val;

  void updateUser(Function(TaskUserStruct) updateFn) {
    updateFn(_user ??= TaskUserStruct());
  }

  bool hasUser() => _user != null;

  // "earnedPoints" field.
  String? _earnedPoints;
  String get earnedPoints => _earnedPoints ?? '';
  set earnedPoints(String? val) => _earnedPoints = val;

  bool hasEarnedPoints() => _earnedPoints != null;

  // "completedAt" field.
  String? _completedAt;
  String get completedAt => _completedAt ?? '';
  set completedAt(String? val) => _completedAt = val;

  bool hasCompletedAt() => _completedAt != null;

  static TaskModelStruct fromMap(Map<String, dynamic> data) => TaskModelStruct(
        id: castToType<int>(data['id']),
        taskName: data['taskName'] as String?,
        startDate: data['startDate'] as String?,
        endDate: data['endDate'] as String?,
        description: data['description'] as String?,
        status: data['status'] as String?,
        plannedHours: castToType<int>(data['plannedHours']),
        taskType: data['taskType'] as String?,
        parentTaskId: castToType<int>(data['parentTaskId']),
        sectionId: castToType<int>(data['sectionId']),
        createdBy: castToType<int>(data['createdBy']),
        createdAt: data['createdAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
        projectId: castToType<int>(data['projectId']),
        userId: castToType<int>(data['userId']),
        consumedHours: castToType<int>(data['consumedHours']),
        projects: ProjectModelStruct.maybeFromMap(data['projects']),
        issueType: data['issueType'] as String?,
        user: TaskUserStruct.maybeFromMap(data['user']),
        earnedPoints: data['earnedPoints'] as String?,
        completedAt: data['completedAt'] as String?,
      );

  static TaskModelStruct? maybeFromMap(dynamic data) => data is Map
      ? TaskModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'taskName': _taskName,
        'startDate': _startDate,
        'endDate': _endDate,
        'description': _description,
        'status': _status,
        'plannedHours': _plannedHours,
        'taskType': _taskType,
        'parentTaskId': _parentTaskId,
        'sectionId': _sectionId,
        'createdBy': _createdBy,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'projectId': _projectId,
        'userId': _userId,
        'consumedHours': _consumedHours,
        'projects': _projects?.toMap(),
        'issueType': _issueType,
        'user': _user?.toMap(),
        'earnedPoints': _earnedPoints,
        'completedAt': _completedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'taskName': serializeParam(
          _taskName,
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
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'plannedHours': serializeParam(
          _plannedHours,
          ParamType.int,
        ),
        'taskType': serializeParam(
          _taskType,
          ParamType.String,
        ),
        'parentTaskId': serializeParam(
          _parentTaskId,
          ParamType.int,
        ),
        'sectionId': serializeParam(
          _sectionId,
          ParamType.int,
        ),
        'createdBy': serializeParam(
          _createdBy,
          ParamType.int,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updatedAt': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'projectId': serializeParam(
          _projectId,
          ParamType.int,
        ),
        'userId': serializeParam(
          _userId,
          ParamType.int,
        ),
        'consumedHours': serializeParam(
          _consumedHours,
          ParamType.int,
        ),
        'projects': serializeParam(
          _projects,
          ParamType.DataStruct,
        ),
        'issueType': serializeParam(
          _issueType,
          ParamType.String,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
        'earnedPoints': serializeParam(
          _earnedPoints,
          ParamType.String,
        ),
        'completedAt': serializeParam(
          _completedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static TaskModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      TaskModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        taskName: deserializeParam(
          data['taskName'],
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
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        plannedHours: deserializeParam(
          data['plannedHours'],
          ParamType.int,
          false,
        ),
        taskType: deserializeParam(
          data['taskType'],
          ParamType.String,
          false,
        ),
        parentTaskId: deserializeParam(
          data['parentTaskId'],
          ParamType.int,
          false,
        ),
        sectionId: deserializeParam(
          data['sectionId'],
          ParamType.int,
          false,
        ),
        createdBy: deserializeParam(
          data['createdBy'],
          ParamType.int,
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
        projectId: deserializeParam(
          data['projectId'],
          ParamType.int,
          false,
        ),
        userId: deserializeParam(
          data['userId'],
          ParamType.int,
          false,
        ),
        consumedHours: deserializeParam(
          data['consumedHours'],
          ParamType.int,
          false,
        ),
        projects: deserializeStructParam(
          data['projects'],
          ParamType.DataStruct,
          false,
          structBuilder: ProjectModelStruct.fromSerializableMap,
        ),
        issueType: deserializeParam(
          data['issueType'],
          ParamType.String,
          false,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: TaskUserStruct.fromSerializableMap,
        ),
        earnedPoints: deserializeParam(
          data['earnedPoints'],
          ParamType.String,
          false,
        ),
        completedAt: deserializeParam(
          data['completedAt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TaskModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TaskModelStruct &&
        id == other.id &&
        taskName == other.taskName &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        description == other.description &&
        status == other.status &&
        plannedHours == other.plannedHours &&
        taskType == other.taskType &&
        parentTaskId == other.parentTaskId &&
        sectionId == other.sectionId &&
        createdBy == other.createdBy &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        projectId == other.projectId &&
        userId == other.userId &&
        consumedHours == other.consumedHours &&
        projects == other.projects &&
        issueType == other.issueType &&
        user == other.user &&
        earnedPoints == other.earnedPoints &&
        completedAt == other.completedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        taskName,
        startDate,
        endDate,
        description,
        status,
        plannedHours,
        taskType,
        parentTaskId,
        sectionId,
        createdBy,
        createdAt,
        updatedAt,
        projectId,
        userId,
        consumedHours,
        projects,
        issueType,
        user,
        earnedPoints,
        completedAt
      ]);
}

TaskModelStruct createTaskModelStruct({
  int? id,
  String? taskName,
  String? startDate,
  String? endDate,
  String? description,
  String? status,
  int? plannedHours,
  String? taskType,
  int? parentTaskId,
  int? sectionId,
  int? createdBy,
  String? createdAt,
  String? updatedAt,
  int? projectId,
  int? userId,
  int? consumedHours,
  ProjectModelStruct? projects,
  String? issueType,
  TaskUserStruct? user,
  String? earnedPoints,
  String? completedAt,
}) =>
    TaskModelStruct(
      id: id,
      taskName: taskName,
      startDate: startDate,
      endDate: endDate,
      description: description,
      status: status,
      plannedHours: plannedHours,
      taskType: taskType,
      parentTaskId: parentTaskId,
      sectionId: sectionId,
      createdBy: createdBy,
      createdAt: createdAt,
      updatedAt: updatedAt,
      projectId: projectId,
      userId: userId,
      consumedHours: consumedHours,
      projects: projects ?? ProjectModelStruct(),
      issueType: issueType,
      user: user ?? TaskUserStruct(),
      earnedPoints: earnedPoints,
      completedAt: completedAt,
    );
