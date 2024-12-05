import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  bool hasSubtotal() => _subtotal != null;

  // "producto" field.
  DocumentReference? _producto;
  DocumentReference? get producto => _producto;
  bool hasProducto() => _producto != null;

  // "productos" field.
  List<String>? _productos;
  List<String> get productos => _productos ?? const [];
  bool hasProductos() => _productos != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _subtotal = castToType<double>(snapshotData['subtotal']);
    _producto = snapshotData['producto'] as DocumentReference?;
    _productos = getDataList(snapshotData['productos']);
    _quantity = castToType<int>(snapshotData['quantity']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  DocumentReference? user,
  double? subtotal,
  DocumentReference? producto,
  int? quantity,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'subtotal': subtotal,
      'producto': producto,
      'quantity': quantity,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartRecordDocumentEquality implements Equality<CartRecord> {
  const CartRecordDocumentEquality();

  @override
  bool equals(CartRecord? e1, CartRecord? e2) {
    const listEquality = ListEquality();
    return e1?.user == e2?.user &&
        e1?.subtotal == e2?.subtotal &&
        e1?.producto == e2?.producto &&
        listEquality.equals(e1?.productos, e2?.productos) &&
        e1?.quantity == e2?.quantity;
  }

  @override
  int hash(CartRecord? e) => const ListEquality()
      .hash([e?.user, e?.subtotal, e?.producto, e?.productos, e?.quantity]);

  @override
  bool isValidKey(Object? o) => o is CartRecord;
}
