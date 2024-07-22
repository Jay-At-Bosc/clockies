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
  final Future Function(String value) onItemSelected;
  final double? height;
  final double? width;

  PopupMenuWidget({this.height, this.width, required this.onItemSelected});

  @override
  _PopupMenuWidgetState createState() => _PopupMenuWidgetState();
}

class _PopupMenuWidgetState extends State<PopupMenuWidget> {
  String _selectedItem = "List";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(_selectedItem),
        PopupMenuButton<String>(
          icon: Icon(Icons.arrow_drop_down),
          onSelected: (String value) {
            setState(() {
              _selectedItem = value;
            });
            widget.onItemSelected(value); // Call the callback function
          },
          itemBuilder: (BuildContext context) {
            return <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'List',
                child: Text('List'),
              ),
              const PopupMenuItem<String>(
                value: 'Board',
                child: Text('Board'),
              ),
              const PopupMenuItem<String>(
                value: 'Calender',
                child: Text('Calender'),
              ),
            ];
          },
        ),
      ],
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
