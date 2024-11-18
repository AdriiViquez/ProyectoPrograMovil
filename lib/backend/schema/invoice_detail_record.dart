import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InvoiceDetailRecord extends FirestoreRecord {
  InvoiceDetailRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "invoiceRef" field.
  DocumentReference? _invoiceRef;
  DocumentReference? get invoiceRef => _invoiceRef;
  bool hasInvoiceRef() => _invoiceRef != null;

  // "productRef" field.
  DocumentReference? _productRef;
  DocumentReference? get productRef => _productRef;
  bool hasProductRef() => _productRef != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  void _initializeFields() {
    _invoiceRef = snapshotData['invoiceRef'] as DocumentReference?;
    _productRef = snapshotData['productRef'] as DocumentReference?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _price = castToType<double>(snapshotData['price']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('invoice_detail');

  static Stream<InvoiceDetailRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InvoiceDetailRecord.fromSnapshot(s));

  static Future<InvoiceDetailRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InvoiceDetailRecord.fromSnapshot(s));

  static InvoiceDetailRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InvoiceDetailRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InvoiceDetailRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InvoiceDetailRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InvoiceDetailRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InvoiceDetailRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInvoiceDetailRecordData({
  DocumentReference? invoiceRef,
  DocumentReference? productRef,
  int? quantity,
  double? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'invoiceRef': invoiceRef,
      'productRef': productRef,
      'quantity': quantity,
      'price': price,
    }.withoutNulls,
  );

  return firestoreData;
}

class InvoiceDetailRecordDocumentEquality
    implements Equality<InvoiceDetailRecord> {
  const InvoiceDetailRecordDocumentEquality();

  @override
  bool equals(InvoiceDetailRecord? e1, InvoiceDetailRecord? e2) {
    return e1?.invoiceRef == e2?.invoiceRef &&
        e1?.productRef == e2?.productRef &&
        e1?.quantity == e2?.quantity &&
        e1?.price == e2?.price;
  }

  @override
  int hash(InvoiceDetailRecord? e) => const ListEquality()
      .hash([e?.invoiceRef, e?.productRef, e?.quantity, e?.price]);

  @override
  bool isValidKey(Object? o) => o is InvoiceDetailRecord;
}
