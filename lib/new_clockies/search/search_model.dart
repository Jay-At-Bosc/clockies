import '/flutter_flow/flutter_flow_util.dart';
import 'search_widget.dart' show SearchWidget;
import 'package:flutter/material.dart';

class SearchModel extends FlutterFlowModel<SearchWidget> {
  ///  Local state fields for this page.

  List<String> searchTypes = ['Tasks', 'Projects', 'Status'];
  void addToSearchTypes(String item) => searchTypes.add(item);
  void removeFromSearchTypes(String item) => searchTypes.remove(item);
  void removeAtIndexFromSearchTypes(int index) => searchTypes.removeAt(index);
  void insertAtIndexInSearchTypes(int index, String item) =>
      searchTypes.insert(index, item);
  void updateSearchTypesAtIndex(int index, Function(String) updateFn) =>
      searchTypes[index] = updateFn(searchTypes[index]);

  List<String> selectedSearchTypes = [];
  void addToSelectedSearchTypes(String item) => selectedSearchTypes.add(item);
  void removeFromSelectedSearchTypes(String item) =>
      selectedSearchTypes.remove(item);
  void removeAtIndexFromSelectedSearchTypes(int index) =>
      selectedSearchTypes.removeAt(index);
  void insertAtIndexInSelectedSearchTypes(int index, String item) =>
      selectedSearchTypes.insert(index, item);
  void updateSelectedSearchTypesAtIndex(int index, Function(String) updateFn) =>
      selectedSearchTypes[index] = updateFn(selectedSearchTypes[index]);

  bool isShowCancel = true;

  String selectSearch = ' ';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for SearchField widget.
  FocusNode? searchFieldFocusNode;
  TextEditingController? searchFieldTextController;
  String? Function(BuildContext, String?)? searchFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    searchFieldFocusNode?.dispose();
    searchFieldTextController?.dispose();
  }
}
