import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'seccion1_model.dart';
export 'seccion1_model.dart';

class Seccion1Widget extends StatefulWidget {
  const Seccion1Widget({
    Key? key,
    required this.id,
  }) : super(key: key);

  final int? id;

  @override
  _Seccion1WidgetState createState() => _Seccion1WidgetState();
}

class _Seccion1WidgetState extends State<Seccion1Widget> {
  late Seccion1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Seccion1Model());

    _model.displayNameSinNumeController ??= TextEditingController();
    _model.displayNameSinNumeFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.safePop();
          },
          child: Icon(
            Icons.chevron_left,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 24.0,
          ),
        ),
        title: Text(
          'Sección 1',
          style: FlutterFlowTheme.of(context).headlineMedium,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Align(
        alignment: AlignmentDirectional(0.00, 0.00),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: AlignmentDirectional(0.00, -1.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
                child: Text(
                  'Sumatorias',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lexend Deca',
                        fontSize: 16.0,
                      ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 500.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.00, -1.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 24.0, 24.0, 0.0),
                          child: Text(
                            () {
                              if (widget.id == 1) {
                                return '1. 1 + 3 + 5 + ... + (2n - 1) = n^2';
                              } else if (widget.id == 2) {
                                return '2. 1 . 2 + 2 . 3 + 3 + 3 . 4 + ... +n(n + 1) = n(n+1)(n+2) / 3';
                              } else if (widget.id == 3) {
                                return '3. 1(1!) + 2(2!) + ... + n(n!) = (n+1)!-1';
                              } else if (widget.id == 4) {
                                return '4. 1^2 + 2^2 + 3^2 + ... + n^2 = n(n+1)(2n+1) / 6';
                              } else if (widget.id == 5) {
                                return '1^2 - 2^2 + 3^2 + ... + (-1)^n-1 n^2 = (-1)^n+1 n(n+1) / 2';
                              } else if (widget.id == 6) {
                                return '1^3 + 2^3 + 3^3 + ... + n^3 = [n(n+1) / 2]^2';
                              } else if (widget.id == 7) {
                                return '1/1 . 3 + 1/3 . 5 + 1/5 . 7 + .. + 1/(2n-1)(2n+1) = n/2n+1';
                              } else if (widget.id == 8) {
                                return '1/2 . 3 + 1 . 3/2 . 4 . 6 + 1 . 3 . 5/2 . 4 . 6 . 8 + ... + 1 . 3 . 5 ...(2n-1) / 2 . 4 . 6 ... (2n+2) = 1/2 - 1 . 3 . 5 ... (2n+1) / 2 . 4 . 6 ... (2n+2)';
                              } else if (widget.id == 9) {
                                return '9. 1/2^2 - 1 + 1/3^2 - 1 + ... + 1/(n+1)^2-1 = 3/4 - 1/2(n+2)';
                              } else {
                                return ' ';
                              }
                            }(),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Lexend Deca',
                                  fontSize: 16.0,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 20.0, 0.0),
                        child: TextFormField(
                          controller: _model.displayNameSinNumeController,
                          focusNode: _model.displayNameSinNumeFocusNode,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Numero ',
                            labelStyle: FlutterFlowTheme.of(context).bodyMedium,
                            hintText:
                                'Ingresa el numero de resultados que deseas obtener',
                            hintStyle: FlutterFlowTheme.of(context).bodyMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 24.0, 20.0, 24.0),
                          ),
                          style: FlutterFlowTheme.of(context).titleSmall,
                          keyboardType: TextInputType.name,
                          validator: _model
                              .displayNameSinNumeControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(0.00, 0.00),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 0.0),
                                  child: Text(
                                    'Secuencia: ${_model.res} ... +',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 24.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              if (widget.id == 1) {
                                setState(() {
                                  _model.res = functions.sum1(int.parse(_model
                                      .displayNameSinNumeController.text))!;
                                });
                              } else if (widget.id == 2) {
                                setState(() {
                                  _model.res = functions.sum2(int.parse(_model
                                      .displayNameSinNumeController.text))!;
                                });
                              } else if (widget.id == 3) {
                                setState(() {
                                  _model.res = functions.sum3(int.parse(_model
                                      .displayNameSinNumeController.text))!;
                                });
                              } else if (widget.id == 4) {
                                setState(() {
                                  _model.res = functions.sum4(int.parse(_model
                                      .displayNameSinNumeController.text))!;
                                });
                              } else if (widget.id == 5) {
                                setState(() {
                                  _model.res = functions.sum5(int.parse(_model
                                      .displayNameSinNumeController.text))!;
                                });
                              } else if (widget.id == 6) {
                                setState(() {
                                  _model.res = functions.num6(int.parse(_model
                                      .displayNameSinNumeController.text))!;
                                });
                              } else if (widget.id == 7) {
                                setState(() {
                                  _model.res = functions.sum7(int.parse(_model
                                      .displayNameSinNumeController.text))!;
                                });
                              } else if (widget.id == 8) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Este ejercicio no tiene respuesta por el momento',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              } else if (widget.id == 9) {
                                setState(() {
                                  _model.res = functions.num9(int.parse(_model
                                      .displayNameSinNumeController.text))!;
                                });
                              }
                            },
                            text: 'Calular',
                            options: FFButtonOptions(
                              width: 230.0,
                              height: 60.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primaryText,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
