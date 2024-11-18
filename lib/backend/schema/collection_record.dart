import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CollectionRecord extends FirestoreRecord {
  CollectionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _status = snapshotData['status'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('collection');

  static Stream<CollectionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CollectionRecord.fromSnapshot(s));

  static Future<CollectionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CollectionRecord.fromSnapshot(s));

  static CollectionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CollectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CollectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CollectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CollectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CollectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCollectionRecordData({
  String? name,
  String? description,
  String? status,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'status': status,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class CollectionRecordDocumentEquality implements Equality<CollectionRecord> {
  const CollectionRecordDocumentEquality();

  @override
  bool equals(CollectionRecord? e1, CollectionRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.status == e2?.status &&
        e1?.image == e2?.image;
  }

  @override
  int hash(CollectionRecord? e) =>
      const ListEquality().hash([e?.name, e?.description, e?.status, e?.image]);

  @override
  bool isValidKey(Object? o) => o is CollectionRecord;
}
