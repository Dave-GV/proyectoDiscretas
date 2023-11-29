import '/components/value_preposicion_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:sticky_headers/sticky_headers.dart';
import 'seccion2_widget.dart' show Seccion2Widget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Seccion2Model extends FlutterFlowModel<Seccion2Widget> {
  ///  Local state fields for this page.

  double factIt = 0.0;

  double factRec = 0.0;

  List<String> preposiciones = [];
  void addToPreposiciones(String item) => preposiciones.add(item);
  void removeFromPreposiciones(String item) => preposiciones.remove(item);
  void removeAtIndexFromPreposiciones(int index) =>
      preposiciones.removeAt(index);
  void insertAtIndexInPreposiciones(int index, String item) =>
      preposiciones.insert(index, item);
  void updatePreposicionesAtIndex(int index, Function(String) updateFn) =>
      preposiciones[index] = updateFn(preposiciones[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for displayName widget.
  FocusNode? displayNameFocusNode;
  TextEditingController? displayNameController;
  String? Function(BuildContext, String?)? displayNameControllerValidator;
  // Models for valuePreposicion dynamic component.
  late FlutterFlowDynamicModels<ValuePreposicionModel> valuePreposicionModels;
  // State field(s) for displayNameSinNume widget.
  FocusNode? displayNameSinNumeFocusNode;
  TextEditingController? displayNameSinNumeController;
  String? Function(BuildContext, String?)?
      displayNameSinNumeControllerValidator;
  // State field(s) for factRec widget.
  FocusNode? factRecFocusNode;
  TextEditingController? factRecController;
  String? Function(BuildContext, String?)? factRecControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    valuePreposicionModels =
        FlutterFlowDynamicModels(() => ValuePreposicionModel());
  }

  void dispose() {
    tabBarController?.dispose();
    displayNameFocusNode?.dispose();
    displayNameController?.dispose();

    valuePreposicionModels.dispose();
    displayNameSinNumeFocusNode?.dispose();
    displayNameSinNumeController?.dispose();

    factRecFocusNode?.dispose();
    factRecController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
