// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<String> createOdontologo(String nombre, String apellido,
    String especialidad, int edad, int disponible, String foto) async {
  String mensaje = "Odontologo agregado";
  DateTime createOdontologoDate = DateTime.now();

  try {
    final CollectionReference<Map<String, dynamic>> odontologos =
        FirebaseFirestore.instance.collection('odontologos');

    DocumentReference newDocRef = odontologos.doc();
    String odontologoId = newDocRef.id;

    await newDocRef.set({
      'id': odontologoId,
      'nombre': nombre,
      'apellido': apellido,
      'especialidad': especialidad,
      'edad': edad,
      'disponible': disponible,
      'foto': foto
    });

    return mensaje;
  } on FirebaseAuthException catch (e) {
    return e.code;
  }
}
