import '/flutter_flow/flutter_flow_util.dart';
import 'inventory_view_widget.dart' show InventoryViewWidget;
import 'package:flutter/material.dart';

class InventoryViewModel extends FlutterFlowModel<InventoryViewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
