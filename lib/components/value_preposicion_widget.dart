import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'value_preposicion_model.dart';
export 'value_preposicion_model.dart';

class ValuePreposicionWidget extends StatefulWidget {
  const ValuePreposicionWidget({Key? key}) : super(key: key);

  @override
  _ValuePreposicionWidgetState createState() => _ValuePreposicionWidgetState();
}

class _ValuePreposicionWidgetState extends State<ValuePreposicionWidget> {
  late ValuePreposicionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ValuePreposicionModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(-1.00, 0.00),
      child: Switch.adaptive(
        value: _model.switchValue ??= true,
        onChanged: (newValue) async {
          setState(() => _model.switchValue = newValue!);
        },
        activeColor: FlutterFlowTheme.of(context).primary,
        activeTrackColor: FlutterFlowTheme.of(context).accent1,
        inactiveTrackColor: FlutterFlowTheme.of(context).error,
        inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
      ),
    );
  }
}
