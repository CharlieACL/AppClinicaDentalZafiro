import '/flutter_flow/flutter_flow_util.dart';
import 'cliente_view_widget.dart' show ClienteViewWidget;
import 'package:flutter/material.dart';

class ClienteViewModel extends FlutterFlowModel<ClienteViewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
