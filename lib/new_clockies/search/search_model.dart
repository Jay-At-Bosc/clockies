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

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
