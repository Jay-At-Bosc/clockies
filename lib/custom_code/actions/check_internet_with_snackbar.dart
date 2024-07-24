// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_fonts/google_fonts.dart';

Future<bool> checkInternetWithSnackbar(BuildContext context) async {
  bool hasConnection = await checkInternet();
  // print("Connection: ${hasConnection}");
  FFAppState().update(() {
    FFAppState().internetConnect = hasConnection;
  });
  if (FFAppState().internetConnect) {
    return true;
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Please check your internet connection.',
          style: FlutterFlowTheme.of(context).bodySmall.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).primaryText,
                letterSpacing: 0.38,
                useGoogleFonts: GoogleFonts.asMap().containsKey('Poppins'),
              ),
        ),
        duration: Duration(milliseconds: 4000),
        backgroundColor: FlutterFlowTheme.of(context).primary,
      ),
    );
    return false;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
