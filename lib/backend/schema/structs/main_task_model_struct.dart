// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MainTaskModelStruct extends BaseStruct {
  MainTaskModelStruct({
    int? count,
    List<TaskModelStruct>? rows,
  })  : _count = count,
        _rows = rows;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  set count(int? val) => _count = val;

  void incrementCount(int amount) => count = count + amount;

  bool hasCount() => _count != null;

  // "rows" field.
  List<TaskModelStruct>? _rows;
  List<TaskModelStruct> get rows => _rows ?? const [];
  set rows(List<TaskModelStruct>? val) => _rows = val;

  void updateRows(Function(List<TaskModelStruct>) updateFn) {
    updateFn(_rows ??= []);
  }

  bool hasRows() => _rows != null;

  static MainTaskModelStruct fromMap(Map<String, dynamic> data) =>
      MainTaskModelStruct(
        count: castToType<int>(data['count']),
        rows: getStructList(
          data['rows'],
          TaskModelStruct.fromMap,
        ),
      );

  static MainTaskModelStruct? maybeFromMap(dynamic data) => data is Map
      ? MainTaskModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'count': _count,
        'rows': _rows?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'count': serializeParam(
          _count,
          ParamType.int,
        ),
        'rows': serializeParam(
          _rows,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static MainTaskModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      MainTaskModelStruct(
        count: deserializeParam(
          data['count'],
          ParamType.int,
          false,
        ),
        rows: deserializeStructParam<TaskModelStruct>(
          data['rows'],
          ParamType.DataStruct,
          true,
          structBuilder: TaskModelStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'MainTaskModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MainTaskModelStruct &&
        count == other.count &&
        listEquality.equals(rows, other.rows);
  }

  @override
  int get hashCode => const ListEquality().hash([count, rows]);
}

MainTaskModelStruct createMainTaskModelStruct({
  int? count,
}) =>
    MainTaskModelStruct(
      count: count,
    );
