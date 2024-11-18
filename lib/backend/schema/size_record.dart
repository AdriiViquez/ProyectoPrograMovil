import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SizeRecord extends FirestoreRecord {
  SizeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "size" field.
  String? _size;
  String get size => _size ?? '';
  bool hasSize() => _size != null;

  // "sizeNum" field.
  int? _sizeNum;
  int get sizeNum => _sizeNum ?? 0;
  bool hasSizeNum() => _sizeNum != null;

  void _initializeFields() {
    _size = snapshotData['size'] as String?;
    _sizeNum = castToType<int>(snapshotData['sizeNum']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('size');

  static Stream<SizeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SizeRecord.fromSnapshot(s));

  static Future<SizeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SizeRecord.fromSnapshot(s));

  static SizeRecord fromSnapshot(DocumentSnapshot snapshot) => SizeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SizeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SizeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SizeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SizeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSizeRecordData({
  String? size,
  int? sizeNum,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'size': size,
      'sizeNum': sizeNum,
    }.withoutNulls,
  );

  return firestoreData;
}

class SizeRecordDocumentEquality implements Equality<SizeRecord> {
  const SizeRecordDocumentEquality();

  @override
  bool equals(SizeRecord? e1, SizeRecord? e2) {
    return e1?.size == e2?.size && e1?.sizeNum == e2?.sizeNum;
  }

  @override
  int hash(SizeRecord? e) => const ListEquality().hash([e?.size, e?.sizeNum]);

  @override
  bool isValidKey(Object? o) => o is SizeRecord;
}
