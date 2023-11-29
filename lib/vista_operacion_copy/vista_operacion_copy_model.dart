import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'vista_operacion_copy_widget.dart' show VistaOperacionCopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VistaOperacionCopyModel
    extends FlutterFlowModel<VistaOperacionCopyWidget> {
  ///  Local state fields for this page.

  double res = 0.0;

  double numIteraciones = 0.0;

  double resultadoIndefinido = 0.0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for displayName widget.
  FocusNode? displayNameFocusNode1;
  TextEditingController? displayNameController1;
  String? Function(BuildContext, String?)? displayNameController1Validator;
  // State field(s) for displayName widget.
  FocusNode? displayNameFocusNode2;
  TextEditingController? displayNameController2;
  String? Function(BuildContext, String?)? displayNameController2Validator;
  // State field(s) for displayNameSinNume widget.
  FocusNode? displayNameSinNumeFocusNode;
  TextEditingController? displayNameSinNumeController;
  String? Function(BuildContext, String?)?
      displayNameSinNumeControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    tabBarController?.dispose();
    displayNameFocusNode1?.dispose();
    displayNameController1?.dispose();

    displayNameFocusNode2?.dispose();
    displayNameController2?.dispose();

    displayNameSinNumeFocusNode?.dispose();
    displayNameSinNumeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
