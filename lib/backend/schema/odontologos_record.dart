import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OdontologosRecord extends FirestoreRecord {
  OdontologosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "apellido" field.
  String? _apellido;
  String get apellido => _apellido ?? '';
  bool hasApellido() => _apellido != null;

  // "especialidad" field.
  String? _especialidad;
  String get especialidad => _especialidad ?? '';
  bool hasEspecialidad() => _especialidad != null;

  // "edad" field.
  int? _edad;
  int get edad => _edad ?? 0;
  bool hasEdad() => _edad != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "disponible" field.
  int? _disponible;
  int get disponible => _disponible ?? 0;
  bool hasDisponible() => _disponible != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _apellido = snapshotData['apellido'] as String?;
    _especialidad = snapshotData['especialidad'] as String?;
    _edad = castToType<int>(snapshotData['edad']);
    _foto = snapshotData['foto'] as String?;
    _disponible = castToType<int>(snapshotData['disponible']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('odontologos');

  static Stream<OdontologosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OdontologosRecord.fromSnapshot(s));

  static Future<OdontologosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OdontologosRecord.fromSnapshot(s));

  static OdontologosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OdontologosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OdontologosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OdontologosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OdontologosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OdontologosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOdontologosRecordData({
  String? nombre,
  String? apellido,
  String? especialidad,
  int? edad,
  String? foto,
  int? disponible,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'apellido': apellido,
      'especialidad': especialidad,
      'edad': edad,
      'foto': foto,
      'disponible': disponible,
    }.withoutNulls,
  );

  return firestoreData;
}

class OdontologosRecordDocumentEquality implements Equality<OdontologosRecord> {
  const OdontologosRecordDocumentEquality();

  @override
  bool equals(OdontologosRecord? e1, OdontologosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.apellido == e2?.apellido &&
        e1?.especialidad == e2?.especialidad &&
        e1?.edad == e2?.edad &&
        e1?.foto == e2?.foto &&
        e1?.disponible == e2?.disponible;
  }

  @override
  int hash(OdontologosRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.apellido,
        e?.especialidad,
        e?.edad,
        e?.foto,
        e?.disponible
      ]);

  @override
  bool isValidKey(Object? o) => o is OdontologosRecord;
}
