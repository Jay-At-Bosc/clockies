import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Clockies API Group Code

class ClockiesAPIGroup {
  static String getBaseUrl({
    String? authToken = '',
  }) =>
      'http://3.144.249.140:5000/api';
  static Map<String, String> headers = {
    'Authorization': '[authToken]',
  };
  static FetchMyTaskssCall fetchMyTaskssCall = FetchMyTaskssCall();
  static LoginCall loginCall = LoginCall();
  static FetchTaskDetailsCall fetchTaskDetailsCall = FetchTaskDetailsCall();
}

class FetchMyTaskssCall {
  Future<ApiCallResponse> call({
    int? pageNumber,
    int? pageSize,
    dynamic filtersJson,
    String? authToken = '',
  }) async {
    final baseUrl = ClockiesAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    final filters = _serializeJson(filtersJson);

    return ApiManager.instance.makeApiCall(
      callName: 'Fetch My Taskss',
      apiUrl: '$baseUrl/task/myTask',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$authToken',
      },
      params: {
        'pageSize': pageSize,
        'filters': filters,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.count''',
      ));
  List? myTaskList(dynamic response) => getJsonField(
        response,
        r'''$.data.rows''',
        true,
      ) as List?;
  dynamic myTaskData(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? authToken = '',
  }) async {
    final baseUrl = ClockiesAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '$baseUrl/auth/login',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic user(dynamic response) => getJsonField(
        response,
        r'''$.data.user''',
      );
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.token''',
      ));
}

class FetchTaskDetailsCall {
  Future<ApiCallResponse> call({
    int? taskId,
    String? authToken = '',
  }) async {
    final baseUrl = ClockiesAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Task Details',
      apiUrl: '$baseUrl/task/$taskId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic taskDetailsData(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  String? projectName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.projects.projectName''',
      ));
  String? creatorName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.creator.userName''',
      ));
  dynamic userName(dynamic response) => getJsonField(
        response,
        r'''$.data.user''',
      );
  String? sectionName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.section.name''',
      ));
}

/// End Clockies API Group Code

class LoginAPICall {
  static Future<ApiCallResponse> call({
    String? email = 'vishal.sorani@bosctechlabs.com',
    String? password = '1!ygcxuhvb',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login API',
      apiUrl: 'http://3.144.249.140:5000/api/auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic userData(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  static dynamic user(dynamic response) => getJsonField(
        response,
        r'''$.data.user''',
      );
}

class ForgotPasswordAPICall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Forgot Password API',
      apiUrl: 'http://3.144.249.140:5000/api/auth/forgotpassword',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic forgotPassowrd(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class DashboardAPICall {
  static Future<ApiCallResponse> call({
    String? authToken =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjE3LCJ1c2VyTmFtZSI6IlZpc2hhbCBTb3JhbmkiLCJlbWFpbCI6InZpc2hhbC5zb3JhbmlAYm9zY3RlY2hsYWJzLmNvbSIsInVzZXJUaW1lem9uZSI6IkFzaWEvQ2FsY3V0dGEiLCJzdGF0dXMiOiJhY3RpdmUiLCJ1c2VyUm9sZUlkIjoxLCJjcmVhdGVkQXQiOiIyMDI0LTA2LTIxVDA1OjMzOjE1LjAwMFoiLCJ1cGRhdGVkQXQiOiIyMDI0LTA2LTIxVDA1OjMzOjE1LjAwMFoiLCJjb21wYW55SWQiOjE3LCJwZXJtaXNzaW9ucyI6WyJDT05URU5UX0RBU0hCT0FSRCIsIlJVTl9USU1FVFJBQ0tFUiIsIkVESVRfVElNRUxJTkUiLCJERUxFVEVfVElNRUxJTkUiLCJDUkVBVEVfUkVQT1JUIiwiUkVBRF9SRVBPUlQiLCJDUkVBVEVfUFJPSkVDVCIsIkVESVRfUFJPSkVDVCIsIlJFQURfUFJPSkVDVCIsIkRFTEVURV9QUk9KRUNUIiwiQ1JFQVRFX1RBU0siLCJSRUFEX1RBU0siLCJFRElUX1RBU0siLCJERUxFVEVfVEFTSyIsIkNSRUFURV9DTElFTlQiLCJSRUFEX0NMSUVOVCIsIkVESVRfQ0xJRU5UIiwiREVMRVRFX0NMSUVOVCIsIkNSRUFURV9VU0VSIiwiUkVBRF9VU0VSIiwiRURJVF9VU0VSIiwiREVMRVRFX1VTRVIiLCJDUkVBVEVfVEVBTSIsIlJFQURfVEVBTSIsIkVESVRfVEVBTSIsIkRFTEVURV9URUFNIiwiQ1JFQVRFX1BST0pFQ1RfTUVNQkVSIiwiUkVBRF9QUk9KRUNUX01FTUJFUiIsIkVESVRfUFJPSkVDVF9NRU1CRVIiLCJERUxFVEVfUFJPSkVDVF9NRU1CRVIiLCJSRUFEX0FDQ09VTlQiLCJDUkVBVEVfU0VDVElPTiIsIlJFQURfU0VDVElPTiIsIkVESVRfU0VDVElPTiIsIkRFTEVURV9TRUNUSU9OIl0sImlhdCI6MTcxODk2NDU2OSwiZXhwIjoxNzIwMjYwNTY5fQ.wjzAjzWVCYJnS2RazBtDQbOm9pbwzfrdNauRI-Eb2v8',
    int? pageSize,
    int? pageNumber,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Dashboard API',
      apiUrl: 'http://3.144.249.140:5000/api/dashboard',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$authToken',
      },
      params: {
        'pageNumber': pageNumber,
        'pageSize': pageSize,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? userDataList(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class FetchProjectsCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? pageNumber,
    int? pageSize,
    String? status = '',
    String? search = '',
    String? orderBy = '',
    String? order = '',
    int? allowManualTask,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Projects',
      apiUrl: 'http://3.144.249.140:5000/api/project',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$authToken',
      },
      params: {
        'pageNumber': pageNumber,
        'pageSize': pageSize,
        'status': status,
        'search': search,
        'orderBy': orderBy,
        'order': order,
        'allowManualTask': allowManualTask,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? projectList(dynamic response) => getJsonField(
        response,
        r'''$.data.rows''',
        true,
      ) as List?;
}

class UpdateProjectDetailCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? id,
    String? projectName = '',
    int? clientId,
    int? totalHrs,
    bool? allowOverSpent,
    bool? allowManualTask,
    String? status = '',
    String? description = '',
  }) async {
    final ffApiRequestBody = '''
{
  "projectName": "$projectName",
  "clientId": $clientId,
  "totalHrs": "$totalHrs",
  "allowOverSpent": "$allowOverSpent",
  "allowManualTask": "$allowManualTask",
  "status": "$status",
  "description": "$description"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Project Detail',
      apiUrl: 'http://3.144.249.140:5000/api/project/$id',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchClientsCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? pageNumber,
    int? pageSize,
    String? search = '',
    bool? order,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Clients',
      apiUrl: 'http://3.144.249.140:5000/api/client',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$authToken',
      },
      params: {
        'pageNumber': pageNumber,
        'pageSize': pageSize,
        'search': search,
        'order': order,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? clientData(dynamic response) => getJsonField(
        response,
        r'''$.data.rows''',
        true,
      ) as List?;
}

class CreateNewProjectCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? projectName = '',
    int? clientId,
    String? totalHrs = '',
    bool? allowOverSpent,
    bool? allowManualTask,
    String? status = '',
    String? description = '',
    String? startDate = '',
    String? endDate = '',
  }) async {
    final ffApiRequestBody = '''
{
  "projectName": "$projectName",
  "clientId": $clientId,
  "totalHrs": "$totalHrs",
  "allowOverSpent": "$allowOverSpent",
  "allowManualTask": "$allowManualTask",
  "status": "$status",
  "description": "$description",
 "startDate": "$startDate",
  "endDate": "$endDate"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create New Project',
      apiUrl: 'http://3.144.249.140:5000/api/project/add',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteProjectCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete Project',
      apiUrl: 'http://3.144.249.140:5000/api/project/$id',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchProjectByIDCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Project By ID',
      apiUrl: 'http://3.144.249.140:5000/api/project/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic projectDetail(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  static List? projectMembers(dynamic response) => getJsonField(
        response,
        r'''$.data.projectmember''',
        true,
      ) as List?;
}

class FetchMyTasksCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? pageSize,
    List<String>? filtersList,
    List<String>? sortingList,
  }) async {
    final filters = _serializeList(filtersList);
    final sorting = _serializeList(sortingList);

    return ApiManager.instance.makeApiCall(
      callName: 'Fetch My Tasks',
      apiUrl: 'http://3.144.249.140:5000/api/task/myTask',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$authToken',
      },
      params: {
        'pageSize': pageSize,
        'filters': filters,
        'sorting': sorting,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? myTasks(dynamic response) => getJsonField(
        response,
        r'''$.data.rows''',
        true,
      ) as List?;
  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class FetchMyTaskCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? pageNumber,
    int? pageSize,
    String? search = '',
    String? order = '',
    String? orderBy = '',
    dynamic filtersJson,
  }) async {
    final filters = _serializeJson(filtersJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'Fetch My Task',
      apiUrl: 'http://3.144.249.140:5000/api/task/myTask',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$authToken',
      },
      params: {
        'pageNumber': pageNumber,
        'pageSize': pageSize,
        'search': search,
        'order': order,
        'orderBy': orderBy,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? taskList(dynamic response) => getJsonField(
        response,
        r'''$.data.rows''',
        true,
      ) as List?;
}

class FetchSectionCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? pageNumber,
    int? pageSize,
    String? search = '',
    int? projectId,
    String? orderBy = 'name',
    String? order = 'ASC',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Section',
      apiUrl: 'http://3.144.249.140:5000/api/section',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$authToken',
      },
      params: {
        'pageNumber': pageNumber,
        'pageSize': pageSize,
        'search': search,
        'projectId': projectId,
        'orderBy': orderBy,
        'order': order,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? sectionDetail(dynamic response) => getJsonField(
        response,
        r'''$.data.rows''',
        true,
      ) as List?;
  static List<String>? sectionName(dynamic response) => (getJsonField(
        response,
        r'''$.data.rows[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AddNewTaskCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? taskName = '',
    int? userId,
    int? sectionId,
    String? endDate = '',
    String? startDate = '',
    String? description = '',
    String? status = '',
    String? taskType = '',
    int? plannedHours,
    int? projectId,
  }) async {
    final ffApiRequestBody = '''
{
  "taskName": "$taskName",
  "userId": $userId,
  "sectionId": $sectionId,
  "endDate": "$endDate",
  "startDate": "$startDate",
  "description": "$description",
  "status": "$status",
  "taskType": "$taskType",
  "plannedHours": $plannedHours,
  "projectId": $projectId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add New Task',
      apiUrl: 'http://3.144.249.140:5000/api/task/add',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic taskData(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
}

class FetchTaskByIdCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Task By Id',
      apiUrl: 'http://3.144.249.140:5000/api/task/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic taskData(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
}

class UpdateTaskCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? taskName = '',
    String? taskType = '',
    int? userId,
    int? sectionId,
    String? startDate = '',
    String? endDate = '',
    String? description = '',
    String? status = '',
    int? plannedHours,
    int? projectId,
    int? id,
  }) async {
    final ffApiRequestBody = '''
{ 
  "status": "$status"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Task ',
      apiUrl: 'http://3.144.249.140:5000/api/task/$id',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? data(dynamic response) => (getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class TimelineFetchManualLogsAPICall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Timeline Fetch Manual Logs API',
      apiUrl: 'http://3.144.249.140:5000/api/timeline/203',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? timlineData(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class FetchTimelineAPICall {
  static Future<ApiCallResponse> call({
    String? startTime = '2024-07-11T00:00:00.567Z',
    String? stopTime = '2024-07-11T23:59:59.567Z',
    String? authToken =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjE5LCJ1c2VyTmFtZSI6ImpheSB2ZWthcml5YSIsImVtYWlsIjoiamF5LnZla2FyaXlhQGJvc2N0ZWNobGFicy5jb20iLCJ1c2VyVGltZXpvbmUiOiJBc2lhL0NhbGN1dHRhIiwic3RhdHVzIjoiYWN0aXZlIiwidXNlclJvbGVJZCI6MSwiY3JlYXRlZEF0IjoiMjAyNC0wNi0yNVQxMDozMzozMi4wMDBaIiwidXBkYXRlZEF0IjoiMjAyNC0wNy0xMFQwOTozNDoyMC4wMDBaIiwiY29tcGFueUlkIjoxNywicGVybWlzc2lvbnMiOlsiQ09OVEVOVF9EQVNIQk9BUkQiLCJSVU5fVElNRVRSQUNLRVIiLCJFRElUX1RJTUVMSU5FIiwiREVMRVRFX1RJTUVMSU5FIiwiQ1JFQVRFX1JFUE9SVCIsIlJFQURfUkVQT1JUIiwiQ1JFQVRFX1BST0pFQ1QiLCJFRElUX1BST0pFQ1QiLCJSRUFEX1BST0pFQ1QiLCJERUxFVEVfUFJPSkVDVCIsIkNSRUFURV9UQVNLIiwiUkVBRF9UQVNLIiwiRURJVF9UQVNLIiwiREVMRVRFX1RBU0siLCJDUkVBVEVfQ0xJRU5UIiwiUkVBRF9DTElFTlQiLCJFRElUX0NMSUVOVCIsIkRFTEVURV9DTElFTlQiLCJDUkVBVEVfVVNFUiIsIlJFQURfVVNFUiIsIkVESVRfVVNFUiIsIkRFTEVURV9VU0VSIiwiQ1JFQVRFX1RFQU0iLCJSRUFEX1RFQU0iLCJFRElUX1RFQU0iLCJERUxFVEVfVEVBTSIsIkNSRUFURV9QUk9KRUNUX01FTUJFUiIsIlJFQURfUFJPSkVDVF9NRU1CRVIiLCJFRElUX1BST0pFQ1RfTUVNQkVSIiwiREVMRVRFX1BST0pFQ1RfTUVNQkVSIiwiUkVBRF9BQ0NPVU5UIl0sImlhdCI6MTcyMDY4MzAyOSwiZXhwIjoxNzIxOTc5MDI5fQ._b1aWfHZswGcOlFbOsiTT-WWv5GVEh5gl3aErGXhoww',
  }) async {
    final ffApiRequestBody = '''
{
  "startTime": "$startTime",
  "stopTime": "$stopTime"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Timeline API',
      apiUrl: 'http://3.144.249.140:5000/api/timeline',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? responseTimelineTask(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static String? responseMessage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class DeleteTaskFromTimelineCall {
  static Future<ApiCallResponse> call({
    int? id = 0,
    String? authToken =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjE5LCJ1c2VyTmFtZSI6ImpheSB2ZWthcml5YSIsImVtYWlsIjoiamF5LnZla2FyaXlhQGJvc2N0ZWNobGFicy5jb20iLCJ1c2VyVGltZXpvbmUiOiJBc2lhL0NhbGN1dHRhIiwic3RhdHVzIjoiYWN0aXZlIiwidXNlclJvbGVJZCI6MSwiY3JlYXRlZEF0IjoiMjAyNC0wNi0yNVQxMDozMzozMi4wMDBaIiwidXBkYXRlZEF0IjoiMjAyNC0wNy0xMFQwOTozNDoyMC4wMDBaIiwiY29tcGFueUlkIjoxNywicGVybWlzc2lvbnMiOlsiQ09OVEVOVF9EQVNIQk9BUkQiLCJSVU5fVElNRVRSQUNLRVIiLCJFRElUX1RJTUVMSU5FIiwiREVMRVRFX1RJTUVMSU5FIiwiQ1JFQVRFX1JFUE9SVCIsIlJFQURfUkVQT1JUIiwiQ1JFQVRFX1BST0pFQ1QiLCJFRElUX1BST0pFQ1QiLCJSRUFEX1BST0pFQ1QiLCJERUxFVEVfUFJPSkVDVCIsIkNSRUFURV9UQVNLIiwiUkVBRF9UQVNLIiwiRURJVF9UQVNLIiwiREVMRVRFX1RBU0siLCJDUkVBVEVfQ0xJRU5UIiwiUkVBRF9DTElFTlQiLCJFRElUX0NMSUVOVCIsIkRFTEVURV9DTElFTlQiLCJDUkVBVEVfVVNFUiIsIlJFQURfVVNFUiIsIkVESVRfVVNFUiIsIkRFTEVURV9VU0VSIiwiQ1JFQVRFX1RFQU0iLCJSRUFEX1RFQU0iLCJFRElUX1RFQU0iLCJERUxFVEVfVEVBTSIsIkNSRUFURV9QUk9KRUNUX01FTUJFUiIsIlJFQURfUFJPSkVDVF9NRU1CRVIiLCJFRElUX1BST0pFQ1RfTUVNQkVSIiwiREVMRVRFX1BST0pFQ1RfTUVNQkVSIiwiUkVBRF9BQ0NPVU5UIl0sImlhdCI6MTcyMDY4MzAyOSwiZXhwIjoxNzIxOTc5MDI5fQ._b1aWfHZswGcOlFbOsiTT-WWv5GVEh5gl3aErGXhoww',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete Task From Timeline',
      apiUrl: 'http://3.144.249.140:5000/api/tracker/$id',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? responseMessage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class FetchAssignedProjectCall {
  static Future<ApiCallResponse> call({
    String? authToken =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjE5LCJ1c2VyTmFtZSI6ImpheSB2ZWthcml5YSIsImVtYWlsIjoiamF5LnZla2FyaXlhQGJvc2N0ZWNobGFicy5jb20iLCJ1c2VyVGltZXpvbmUiOiJBc2lhL0NhbGN1dHRhIiwic3RhdHVzIjoiYWN0aXZlIiwidXNlclJvbGVJZCI6MSwiY3JlYXRlZEF0IjoiMjAyNC0wNi0yNVQxMDozMzozMi4wMDBaIiwidXBkYXRlZEF0IjoiMjAyNC0wNy0xMFQwOTozNDoyMC4wMDBaIiwiY29tcGFueUlkIjoxNywicGVybWlzc2lvbnMiOlsiQ09OVEVOVF9EQVNIQk9BUkQiLCJSVU5fVElNRVRSQUNLRVIiLCJFRElUX1RJTUVMSU5FIiwiREVMRVRFX1RJTUVMSU5FIiwiQ1JFQVRFX1JFUE9SVCIsIlJFQURfUkVQT1JUIiwiQ1JFQVRFX1BST0pFQ1QiLCJFRElUX1BST0pFQ1QiLCJSRUFEX1BST0pFQ1QiLCJERUxFVEVfUFJPSkVDVCIsIkNSRUFURV9UQVNLIiwiUkVBRF9UQVNLIiwiRURJVF9UQVNLIiwiREVMRVRFX1RBU0siLCJDUkVBVEVfQ0xJRU5UIiwiUkVBRF9DTElFTlQiLCJFRElUX0NMSUVOVCIsIkRFTEVURV9DTElFTlQiLCJDUkVBVEVfVVNFUiIsIlJFQURfVVNFUiIsIkVESVRfVVNFUiIsIkRFTEVURV9VU0VSIiwiQ1JFQVRFX1RFQU0iLCJSRUFEX1RFQU0iLCJFRElUX1RFQU0iLCJERUxFVEVfVEVBTSIsIkNSRUFURV9QUk9KRUNUX01FTUJFUiIsIlJFQURfUFJPSkVDVF9NRU1CRVIiLCJFRElUX1BST0pFQ1RfTUVNQkVSIiwiREVMRVRFX1BST0pFQ1RfTUVNQkVSIiwiUkVBRF9BQ0NPVU5UIl0sImlhdCI6MTcyMDYwNjc5NSwiZXhwIjoxNzIxOTAyNzk1fQ.jkfOjhcsRlkE4OHRrTQD4oE2m9QY5o7i7H1AKqgsvMM',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Assigned Project',
      apiUrl:
          'http://3.144.249.140:5000/api/project/?pageSize=all&status=active&isOrder=true',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static List? allProjects(dynamic response) => getJsonField(
        response,
        r'''$.data.rows''',
        true,
      ) as List?;
}

class GetNumberOfProjectMemberCall {
  static Future<ApiCallResponse> call({
    int? id,
    String? authToken =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjE5LCJ1c2VyTmFtZSI6ImpheSB2ZWthcml5YSIsImVtYWlsIjoiamF5LnZla2FyaXlhQGJvc2N0ZWNobGFicy5jb20iLCJ1c2VyVGltZXpvbmUiOiJBc2lhL0NhbGN1dHRhIiwic3RhdHVzIjoiYWN0aXZlIiwidXNlclJvbGVJZCI6MSwiY3JlYXRlZEF0IjoiMjAyNC0wNi0yNVQxMDozMzozMi4wMDBaIiwidXBkYXRlZEF0IjoiMjAyNC0wNy0xMFQwOTozNDoyMC4wMDBaIiwiY29tcGFueUlkIjoxNywicGVybWlzc2lvbnMiOlsiQ09OVEVOVF9EQVNIQk9BUkQiLCJSVU5fVElNRVRSQUNLRVIiLCJFRElUX1RJTUVMSU5FIiwiREVMRVRFX1RJTUVMSU5FIiwiQ1JFQVRFX1JFUE9SVCIsIlJFQURfUkVQT1JUIiwiQ1JFQVRFX1BST0pFQ1QiLCJFRElUX1BST0pFQ1QiLCJSRUFEX1BST0pFQ1QiLCJERUxFVEVfUFJPSkVDVCIsIkNSRUFURV9UQVNLIiwiUkVBRF9UQVNLIiwiRURJVF9UQVNLIiwiREVMRVRFX1RBU0siLCJDUkVBVEVfQ0xJRU5UIiwiUkVBRF9DTElFTlQiLCJFRElUX0NMSUVOVCIsIkRFTEVURV9DTElFTlQiLCJDUkVBVEVfVVNFUiIsIlJFQURfVVNFUiIsIkVESVRfVVNFUiIsIkRFTEVURV9VU0VSIiwiQ1JFQVRFX1RFQU0iLCJSRUFEX1RFQU0iLCJFRElUX1RFQU0iLCJERUxFVEVfVEVBTSIsIkNSRUFURV9QUk9KRUNUX01FTUJFUiIsIlJFQURfUFJPSkVDVF9NRU1CRVIiLCJFRElUX1BST0pFQ1RfTUVNQkVSIiwiREVMRVRFX1BST0pFQ1RfTUVNQkVSIiwiUkVBRF9BQ0NPVU5UIl0sImlhdCI6MTcyMDYwNjc5NSwiZXhwIjoxNzIxOTAyNzk1fQ.jkfOjhcsRlkE4OHRrTQD4oE2m9QY5o7i7H1AKqgsvMM',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Number Of Project Member',
      apiUrl: 'http://3.144.249.140:5000/api/project/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? listOfMember(dynamic response) => getJsonField(
        response,
        r'''$.data.projectmember''',
        true,
      ) as List?;
  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
