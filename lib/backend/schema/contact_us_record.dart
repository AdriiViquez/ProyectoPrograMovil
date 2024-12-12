import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContactUsRecord extends FirestoreRecord {
  ContactUsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "DateTime" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  bool hasDateTime() => _dateTime != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _email = snapshotData['Email'] as String?;
    _description = snapshotData['Description'] as String?;
    _status = snapshotData['Status'] as String?;
    _dateTime = snapshotData['DateTime'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('contactUs');

  static Stream<ContactUsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContactUsRecord.fromSnapshot(s));

  static Future<ContactUsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContactUsRecord.fromSnapshot(s));

  static ContactUsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContactUsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContactUsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContactUsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContactUsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContactUsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContactUsRecordData({
  String? name,
  String? email,
  String? description,
  String? status,
  DateTime? dateTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Email': email,
      'Description': description,
      'Status': status,
      'DateTime': dateTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContactUsRecordDocumentEquality implements Equality<ContactUsRecord> {
  const ContactUsRecordDocumentEquality();

  @override
  bool equals(ContactUsRecord? e1, ContactUsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.email == e2?.email &&
        e1?.description == e2?.description &&
        e1?.status == e2?.status &&
        e1?.dateTime == e2?.dateTime;
  }

  @override
  int hash(ContactUsRecord? e) => const ListEquality()
      .hash([e?.name, e?.email, e?.description, e?.status, e?.dateTime]);

  @override
  bool isValidKey(Object? o) => o is ContactUsRecord;
}
