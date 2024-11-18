import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InvoiceRecord extends FirestoreRecord {
  InvoiceRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "cardHolder" field.
  String? _cardHolder;
  String get cardHolder => _cardHolder ?? '';
  bool hasCardHolder() => _cardHolder != null;

  // "civilId" field.
  int? _civilId;
  int get civilId => _civilId ?? 0;
  bool hasCivilId() => _civilId != null;

  // "paymentAddress" field.
  String? _paymentAddress;
  String get paymentAddress => _paymentAddress ?? '';
  bool hasPaymentAddress() => _paymentAddress != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _cardHolder = snapshotData['cardHolder'] as String?;
    _civilId = castToType<int>(snapshotData['civilId']);
    _paymentAddress = snapshotData['paymentAddress'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _total = castToType<double>(snapshotData['total']);
    _status = snapshotData['status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('invoice');

  static Stream<InvoiceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InvoiceRecord.fromSnapshot(s));

  static Future<InvoiceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InvoiceRecord.fromSnapshot(s));

  static InvoiceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InvoiceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InvoiceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InvoiceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InvoiceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InvoiceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInvoiceRecordData({
  DocumentReference? userRef,
  String? cardHolder,
  int? civilId,
  String? paymentAddress,
  DateTime? date,
  double? total,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'cardHolder': cardHolder,
      'civilId': civilId,
      'paymentAddress': paymentAddress,
      'date': date,
      'total': total,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class InvoiceRecordDocumentEquality implements Equality<InvoiceRecord> {
  const InvoiceRecordDocumentEquality();

  @override
  bool equals(InvoiceRecord? e1, InvoiceRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.cardHolder == e2?.cardHolder &&
        e1?.civilId == e2?.civilId &&
        e1?.paymentAddress == e2?.paymentAddress &&
        e1?.date == e2?.date &&
        e1?.total == e2?.total &&
        e1?.status == e2?.status;
  }

  @override
  int hash(InvoiceRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.cardHolder,
        e?.civilId,
        e?.paymentAddress,
        e?.date,
        e?.total,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is InvoiceRecord;
}
