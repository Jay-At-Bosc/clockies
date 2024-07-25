// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TaskDetailsModelStruct extends BaseStruct {
  TaskDetailsModelStruct({
    int? id,
    String? taskName,
    String? startDate,
    String? endDate,
    String? description,
    String? status,
    String? completedAt,
    int? plannedHours,
    String? taskType,
    String? issueType,
    String? earnedPoints,
    int? parentTaskId,
    int? sectionId,
    String? createdBy,
    String? createdAt,
    String? updatedAt,
    int? projectId,
    int? userId,
    ProjectModelStruct? projects,
    TaskModelStruct? parentTask,
    UserModelStruct? creator,
    UserModelStruct? user,
    SectionModelStruct? section,
  })  : _id = id,
        _taskName = taskName,
        _startDate = startDate,
        _endDate = endDate,
        _description = description,
        _status = status,
        _completedAt = completedAt,
        _plannedHours = plannedHours,
        _taskType = taskType,
        _issueType = issueType,
        _earnedPoints = earnedPoints,
        _parentTaskId = parentTaskId,
        _sectionId = sectionId,
        _createdBy = createdBy,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _projectId = projectId,
        _userId = userId,
        _projects = projects,
        _parentTask = parentTask,
        _creator = creator,
        _user = user,
        _section = section;

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

  // "completedAt" field.
  String? _completedAt;
  String get completedAt => _completedAt ?? '';
  set completedAt(String? val) => _completedAt = val;

  bool hasCompletedAt() => _completedAt != null;

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

  // "issueType" field.
  String? _issueType;
  String get issueType => _issueType ?? '';
  set issueType(String? val) => _issueType = val;

  bool hasIssueType() => _issueType != null;

  // "earnedPoints" field.
  String? _earnedPoints;
  String get earnedPoints => _earnedPoints ?? '';
  set earnedPoints(String? val) => _earnedPoints = val;

  bool hasEarnedPoints() => _earnedPoints != null;

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
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  set createdBy(String? val) => _createdBy = val;

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

  // "projects" field.
  ProjectModelStruct? _projects;
  ProjectModelStruct get projects => _projects ?? ProjectModelStruct();
  set projects(ProjectModelStruct? val) => _projects = val;

  void updateProjects(Function(ProjectModelStruct) updateFn) {
    updateFn(_projects ??= ProjectModelStruct());
  }

  bool hasProjects() => _projects != null;

  // "parentTask" field.
  TaskModelStruct? _parentTask;
  TaskModelStruct get parentTask => _parentTask ?? TaskModelStruct();
  set parentTask(TaskModelStruct? val) => _parentTask = val;

  void updateParentTask(Function(TaskModelStruct) updateFn) {
    updateFn(_parentTask ??= TaskModelStruct());
  }

  bool hasParentTask() => _parentTask != null;

  // "creator" field.
  UserModelStruct? _creator;
  UserModelStruct get creator => _creator ?? UserModelStruct();
  set creator(UserModelStruct? val) => _creator = val;

  void updateCreator(Function(UserModelStruct) updateFn) {
    updateFn(_creator ??= UserModelStruct());
  }

  bool hasCreator() => _creator != null;

  // "user" field.
  UserModelStruct? _user;
  UserModelStruct get user => _user ?? UserModelStruct();
  set user(UserModelStruct? val) => _user = val;

  void updateUser(Function(UserModelStruct) updateFn) {
    updateFn(_user ??= UserModelStruct());
  }

  bool hasUser() => _user != null;

  // "section" field.
  SectionModelStruct? _section;
  SectionModelStruct get section => _section ?? SectionModelStruct();
  set section(SectionModelStruct? val) => _section = val;

  void updateSection(Function(SectionModelStruct) updateFn) {
    updateFn(_section ??= SectionModelStruct());
  }

  bool hasSection() => _section != null;

  static TaskDetailsModelStruct fromMap(Map<String, dynamic> data) =>
      TaskDetailsModelStruct(
        id: castToType<int>(data['id']),
        taskName: data['taskName'] as String?,
        startDate: data['startDate'] as String?,
        endDate: data['endDate'] as String?,
        description: data['description'] as String?,
        status: data['status'] as String?,
        completedAt: data['completedAt'] as String?,
        plannedHours: castToType<int>(data['plannedHours']),
        taskType: data['taskType'] as String?,
        issueType: data['issueType'] as String?,
        earnedPoints: data['earnedPoints'] as String?,
        parentTaskId: castToType<int>(data['parentTaskId']),
        sectionId: castToType<int>(data['sectionId']),
        createdBy: data['createdBy'] as String?,
        createdAt: data['createdAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
        projectId: castToType<int>(data['projectId']),
        userId: castToType<int>(data['userId']),
        projects: ProjectModelStruct.maybeFromMap(data['projects']),
        parentTask: TaskModelStruct.maybeFromMap(data['parentTask']),
        creator: UserModelStruct.maybeFromMap(data['creator']),
        user: UserModelStruct.maybeFromMap(data['user']),
        section: SectionModelStruct.maybeFromMap(data['section']),
      );

  static TaskDetailsModelStruct? maybeFromMap(dynamic data) => data is Map
      ? TaskDetailsModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'taskName': _taskName,
        'startDate': _startDate,
        'endDate': _endDate,
        'description': _description,
        'status': _status,
        'completedAt': _completedAt,
        'plannedHours': _plannedHours,
        'taskType': _taskType,
        'issueType': _issueType,
        'earnedPoints': _earnedPoints,
        'parentTaskId': _parentTaskId,
        'sectionId': _sectionId,
        'createdBy': _createdBy,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'projectId': _projectId,
        'userId': _userId,
        'projects': _projects?.toMap(),
        'parentTask': _parentTask?.toMap(),
        'creator': _creator?.toMap(),
        'user': _user?.toMap(),
        'section': _section?.toMap(),
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
        'completedAt': serializeParam(
          _completedAt,
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
        'issueType': serializeParam(
          _issueType,
          ParamType.String,
        ),
        'earnedPoints': serializeParam(
          _earnedPoints,
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
        'projectId': serializeParam(
          _projectId,
          ParamType.int,
        ),
        'userId': serializeParam(
          _userId,
          ParamType.int,
        ),
        'projects': serializeParam(
          _projects,
          ParamType.DataStruct,
        ),
        'parentTask': serializeParam(
          _parentTask,
          ParamType.DataStruct,
        ),
        'creator': serializeParam(
          _creator,
          ParamType.DataStruct,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
        'section': serializeParam(
          _section,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static TaskDetailsModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TaskDetailsModelStruct(
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
        completedAt: deserializeParam(
          data['completedAt'],
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
        issueType: deserializeParam(
          data['issueType'],
          ParamType.String,
          false,
        ),
        earnedPoints: deserializeParam(
          data['earnedPoints'],
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
        projects: deserializeStructParam(
          data['projects'],
          ParamType.DataStruct,
          false,
          structBuilder: ProjectModelStruct.fromSerializableMap,
        ),
        parentTask: deserializeStructParam(
          data['parentTask'],
          ParamType.DataStruct,
          false,
          structBuilder: TaskModelStruct.fromSerializableMap,
        ),
        creator: deserializeStructParam(
          data['creator'],
          ParamType.DataStruct,
          false,
          structBuilder: UserModelStruct.fromSerializableMap,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserModelStruct.fromSerializableMap,
        ),
        section: deserializeStructParam(
          data['section'],
          ParamType.DataStruct,
          false,
          structBuilder: SectionModelStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TaskDetailsModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TaskDetailsModelStruct &&
        id == other.id &&
        taskName == other.taskName &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        description == other.description &&
        status == other.status &&
        completedAt == other.completedAt &&
        plannedHours == other.plannedHours &&
        taskType == other.taskType &&
        issueType == other.issueType &&
        earnedPoints == other.earnedPoints &&
        parentTaskId == other.parentTaskId &&
        sectionId == other.sectionId &&
        createdBy == other.createdBy &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        projectId == other.projectId &&
        userId == other.userId &&
        projects == other.projects &&
        parentTask == other.parentTask &&
        creator == other.creator &&
        user == other.user &&
        section == other.section;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        taskName,
        startDate,
        endDate,
        description,
        status,
        completedAt,
        plannedHours,
        taskType,
        issueType,
        earnedPoints,
        parentTaskId,
        sectionId,
        createdBy,
        createdAt,
        updatedAt,
        projectId,
        userId,
        projects,
        parentTask,
        creator,
        user,
        section
      ]);
}

TaskDetailsModelStruct createTaskDetailsModelStruct({
  int? id,
  String? taskName,
  String? startDate,
  String? endDate,
  String? description,
  String? status,
  String? completedAt,
  int? plannedHours,
  String? taskType,
  String? issueType,
  String? earnedPoints,
  int? parentTaskId,
  int? sectionId,
  String? createdBy,
  String? createdAt,
  String? updatedAt,
  int? projectId,
  int? userId,
  ProjectModelStruct? projects,
  TaskModelStruct? parentTask,
  UserModelStruct? creator,
  UserModelStruct? user,
  SectionModelStruct? section,
}) =>
    TaskDetailsModelStruct(
      id: id,
      taskName: taskName,
      startDate: startDate,
      endDate: endDate,
      description: description,
      status: status,
      completedAt: completedAt,
      plannedHours: plannedHours,
      taskType: taskType,
      issueType: issueType,
      earnedPoints: earnedPoints,
      parentTaskId: parentTaskId,
      sectionId: sectionId,
      createdBy: createdBy,
      createdAt: createdAt,
      updatedAt: updatedAt,
      projectId: projectId,
      userId: userId,
      projects: projects ?? ProjectModelStruct(),
      parentTask: parentTask ?? TaskModelStruct(),
      creator: creator ?? UserModelStruct(),
      user: user ?? UserModelStruct(),
      section: section ?? SectionModelStruct(),
    );
