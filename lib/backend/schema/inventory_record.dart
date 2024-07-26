import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InventoryRecord extends FirestoreRecord {
  InventoryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _categoria = snapshotData['categoria'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _precio = castToType<double>(snapshotData['precio']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('inventory');

  static Stream<InventoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InventoryRecord.fromSnapshot(s));

  static Future<InventoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InventoryRecord.fromSnapshot(s));

  static InventoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InventoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InventoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InventoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InventoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InventoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInventoryRecordData({
  String? nombre,
  String? categoria,
  String? descripcion,
  int? cantidad,
  double? precio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'categoria': categoria,
      'descripcion': descripcion,
      'cantidad': cantidad,
      'precio': precio,
    }.withoutNulls,
  );

  return firestoreData;
}

class InventoryRecordDocumentEquality implements Equality<InventoryRecord> {
  const InventoryRecordDocumentEquality();

  @override
  bool equals(InventoryRecord? e1, InventoryRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.categoria == e2?.categoria &&
        e1?.descripcion == e2?.descripcion &&
        e1?.cantidad == e2?.cantidad &&
        e1?.precio == e2?.precio;
  }

  @override
  int hash(InventoryRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.categoria, e?.descripcion, e?.cantidad, e?.precio]);

  @override
  bool isValidKey(Object? o) => o is InventoryRecord;
}
