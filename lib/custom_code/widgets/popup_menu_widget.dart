// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class PopupMenuWidget extends StatefulWidget {
  final Future Function(int index) onItemSelected;
  final double? height;
  final double? width;

  PopupMenuWidget({this.height, this.width, required this.onItemSelected});

  @override
  _PopupMenuWidgetState createState() => _PopupMenuWidgetState();
}

class _PopupMenuWidgetState extends State<PopupMenuWidget> {
  int _selectedIndex = 0;
  List<String> _items = ['List', 'Board', 'Calendar'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          PopupMenuButton<int>(
            child: Row(
              children: [
                Text(_items[_selectedIndex]),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            onSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
              widget.onItemSelected(index);
            },
            itemBuilder: (BuildContext context) {
              return List.generate(_items.length, (index) {
                return PopupMenuItem<int>(
                  value: index,
                  child: Text(_items[index]),
                );
              });
            },
          ),
        ],
      ),
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
