import '/flutter_flow/flutter_flow_util.dart';
import 'odontologo_view_widget.dart' show OdontologoViewWidget;
import 'package:flutter/material.dart';

class OdontologoViewModel extends FlutterFlowModel<OdontologoViewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
