import '/flutter_flow/flutter_flow_util.dart';
import 'filter_option_widget.dart' show FilterOptionWidget;
import 'package:flutter/material.dart';

class FilterOptionModel extends FlutterFlowModel<FilterOptionWidget> {
  ///  Local state fields for this component.

  List<String> filterOptionList = ['Completion Status', 'Projects', 'Due by'];
  void addToFilterOptionList(String item) => filterOptionList.add(item);
  void removeFromFilterOptionList(String item) => filterOptionList.remove(item);
  void removeAtIndexFromFilterOptionList(int index) =>
      filterOptionList.removeAt(index);
  void insertAtIndexInFilterOptionList(int index, String item) =>
      filterOptionList.insert(index, item);
  void updateFilterOptionListAtIndex(int index, Function(String) updateFn) =>
      filterOptionList[index] = updateFn(filterOptionList[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
