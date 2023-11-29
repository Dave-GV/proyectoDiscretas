import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'seccion1_widget.dart' show Seccion1Widget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Seccion1Model extends FlutterFlowModel<Seccion1Widget> {
  ///  Local state fields for this page.

  String res = '...';

  ///  State fields for stateful widgets in this page.

  // State field(s) for displayNameSinNume widget.
  FocusNode? displayNameSinNumeFocusNode;
  TextEditingController? displayNameSinNumeController;
  String? Function(BuildContext, String?)?
      displayNameSinNumeControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    displayNameSinNumeFocusNode?.dispose();
    displayNameSinNumeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
