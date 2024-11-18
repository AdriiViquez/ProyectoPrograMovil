import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SalesRecord extends FirestoreRecord {
  SalesRecord._(
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
  double? _quantity;
  double get quantity => _quantity ?? 0.0;
  bool hasQuantity() => _quantity != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "saleDate" field.
  DateTime? _saleDate;
  DateTime? get saleDate => _saleDate;
  bool hasSaleDate() => _saleDate != null;

  void _initializeFields() {
    _invoiceRef = snapshotData['invoiceRef'] as DocumentReference?;
    _productRef = snapshotData['productRef'] as DocumentReference?;
    _quantity = castToType<double>(snapshotData['quantity']);
    _price = castToType<double>(snapshotData['price']);
    _total = castToType<double>(snapshotData['total']);
    _saleDate = snapshotData['saleDate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sales');

  static Stream<SalesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SalesRecord.fromSnapshot(s));

  static Future<SalesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SalesRecord.fromSnapshot(s));

  static SalesRecord fromSnapshot(DocumentSnapshot snapshot) => SalesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SalesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SalesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SalesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SalesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSalesRecordData({
  DocumentReference? invoiceRef,
  DocumentReference? productRef,
  double? quantity,
  double? price,
  double? total,
  DateTime? saleDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'invoiceRef': invoiceRef,
      'productRef': productRef,
      'quantity': quantity,
      'price': price,
      'total': total,
      'saleDate': saleDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class SalesRecordDocumentEquality implements Equality<SalesRecord> {
  const SalesRecordDocumentEquality();

  @override
  bool equals(SalesRecord? e1, SalesRecord? e2) {
    return e1?.invoiceRef == e2?.invoiceRef &&
        e1?.productRef == e2?.productRef &&
        e1?.quantity == e2?.quantity &&
        e1?.price == e2?.price &&
        e1?.total == e2?.total &&
        e1?.saleDate == e2?.saleDate;
  }

  @override
  int hash(SalesRecord? e) => const ListEquality().hash([
        e?.invoiceRef,
        e?.productRef,
        e?.quantity,
        e?.price,
        e?.total,
        e?.saleDate
      ]);

  @override
  bool isValidKey(Object? o) => o is SalesRecord;
}
