import '/flutter_flow/flutter_flow_util.dart';
import 'cliente_create_widget.dart' show ClienteCreateWidget;
import 'package:flutter/material.dart';

class ClienteCreateModel extends FlutterFlowModel<ClienteCreateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoTextController;
  String? Function(BuildContext, String?)? txtCorreoTextControllerValidator;
  // State field(s) for txtContra widget.
  FocusNode? txtContraFocusNode;
  TextEditingController? txtContraTextController;
  late bool txtContraVisibility;
  String? Function(BuildContext, String?)? txtContraTextControllerValidator;
  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  // State field(s) for txtApellidos widget.
  FocusNode? txtApellidosFocusNode;
  TextEditingController? txtApellidosTextController;
  String? Function(BuildContext, String?)? txtApellidosTextControllerValidator;
  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoTextController;
  String? Function(BuildContext, String?)? txtTelefonoTextControllerValidator;
  // State field(s) for txtRol widget.
  FocusNode? txtRolFocusNode;
  TextEditingController? txtRolTextController;
  String? Function(BuildContext, String?)? txtRolTextControllerValidator;
  // Stores action output result for [Custom Action - createCliente] action in Button widget.
  String? resultado;

  @override
  void initState(BuildContext context) {
    txtContraVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();

    txtContraFocusNode?.dispose();
    txtContraTextController?.dispose();

    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtApellidosFocusNode?.dispose();
    txtApellidosTextController?.dispose();

    txtTelefonoFocusNode?.dispose();
    txtTelefonoTextController?.dispose();

    txtRolFocusNode?.dispose();
    txtRolTextController?.dispose();
  }
}
