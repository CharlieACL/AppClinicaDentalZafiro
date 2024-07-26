import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'inventory_create_widget.dart' show InventoryCreateWidget;
import 'package:flutter/material.dart';

class InventoryCreateModel extends FlutterFlowModel<InventoryCreateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtName widget.
  FocusNode? txtNameFocusNode;
  TextEditingController? txtNameTextController;
  String? Function(BuildContext, String?)? txtNameTextControllerValidator;
  // State field(s) for comboCategory widget.
  String? comboCategoryValue;
  FormFieldController<String>? comboCategoryValueController;
  // State field(s) for txtDescription widget.
  FocusNode? txtDescriptionFocusNode;
  TextEditingController? txtDescriptionTextController;
  String? Function(BuildContext, String?)?
      txtDescriptionTextControllerValidator;
  // State field(s) for txtAmount widget.
  FocusNode? txtAmountFocusNode;
  TextEditingController? txtAmountTextController;
  String? Function(BuildContext, String?)? txtAmountTextControllerValidator;
  // State field(s) for txtPrice widget.
  FocusNode? txtPriceFocusNode;
  TextEditingController? txtPriceTextController;
  String? Function(BuildContext, String?)? txtPriceTextControllerValidator;
  // Stores action output result for [Custom Action - createInventory] action in Button widget.
  String? salida;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtNameFocusNode?.dispose();
    txtNameTextController?.dispose();

    txtDescriptionFocusNode?.dispose();
    txtDescriptionTextController?.dispose();

    txtAmountFocusNode?.dispose();
    txtAmountTextController?.dispose();

    txtPriceFocusNode?.dispose();
    txtPriceTextController?.dispose();
  }
}
