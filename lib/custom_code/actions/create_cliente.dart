// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<String> createCliente(
  String correo,
  String nombre,
  String apellidos,
  String rol,
  String telefono,
  String contrasena,
  String randomDocGen,
) async {
  String mensaje = "Cliente agregado";
  DateTime fechaActual = DateTime.now();

  FirebaseApp app = await Firebase.initializeApp(
    name: randomDocGen,
    options: Firebase.app().options,
  );

  try {
    UserCredential userCredential = await FirebaseAuth.instanceFor(app: app)
        .createUserWithEmailAndPassword(email: correo, password: contrasena);

    String? uid = userCredential.user?.uid;

    final CollectionReference<Map<String, dynamic>> cliente =
        FirebaseFirestore.instance.collection('users');

    await cliente.doc(uid).set({
      'uid': uid,
      'email': correo,
      'display_name': nombre,
      'apellidos': apellidos,
      'created_time': fechaActual,
      'phone_number': telefono,
      'rol': rol
    });

    return mensaje;
  } on FirebaseAuthException catch (e) {
    return e.code;
  }
}
