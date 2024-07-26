// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future<String> createInventory(
  String nombre,
  String categoria,
  String descripcion,
  int cantidad,
  double precio,
) async {
  String mensaje = "Producto Agregado";
  DateTime createInventoryDate = DateTime.now();

  try {
    final CollectionReference<Map<String, dynamic>> inventory =
        FirebaseFirestore.instance.collection('inventory');

    DocumentReference newDocRef = inventory.doc();
    String inventoryId = newDocRef.id;

    await newDocRef.set({
      'id': inventoryId,
      'nombre': nombre,
      'categoria': categoria,
      'descripcion': descripcion,
      'cantidad': cantidad,
      'precio': precio,
      'created_time': createInventoryDate
    });

    return mensaje;
  } catch (e) {
    return "Error al agregar el producto: ${e.toString()}";
  }
}
