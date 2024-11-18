import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProviderRecord extends FirestoreRecord {
  ProviderRecord._(
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

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _phone = snapshotData['phone'] as String?;
    _address = snapshotData['address'] as String?;
    _status = snapshotData['status'] as String?;
    _email = snapshotData['email'] as String?;
    _title = snapshotData['title'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('provider');

  static Stream<ProviderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProviderRecord.fromSnapshot(s));

  static Future<ProviderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProviderRecord.fromSnapshot(s));

  static ProviderRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProviderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProviderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProviderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProviderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProviderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProviderRecordData({
  String? name,
  String? description,
  String? phone,
  String? address,
  String? status,
  String? email,
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'phone': phone,
      'address': address,
      'status': status,
      'email': email,
      'title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProviderRecordDocumentEquality implements Equality<ProviderRecord> {
  const ProviderRecordDocumentEquality();

  @override
  bool equals(ProviderRecord? e1, ProviderRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.phone == e2?.phone &&
        e1?.address == e2?.address &&
        e1?.status == e2?.status &&
        e1?.email == e2?.email &&
        e1?.title == e2?.title;
  }

  @override
  int hash(ProviderRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.phone,
        e?.address,
        e?.status,
        e?.email,
        e?.title
      ]);

  @override
  bool isValidKey(Object? o) => o is ProviderRecord;
}
