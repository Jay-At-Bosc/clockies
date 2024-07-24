import 'package:collection/collection.dart';

enum Status {
  active,
  archive,
  complete,
}

enum DateTimelines {
  today,
  tomorrow,
  yesterday,
  currentweek,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Status):
      return Status.values.deserialize(value) as T?;
    case (DateTimelines):
      return DateTimelines.values.deserialize(value) as T?;
    default:
      return null;
  }
}
