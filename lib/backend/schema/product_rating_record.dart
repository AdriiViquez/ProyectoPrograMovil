import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductRatingRecord extends FirestoreRecord {
  ProductRatingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "productReft" field.
  DocumentReference? _productReft;
  DocumentReference? get productReft => _productReft;
  bool hasProductReft() => _productReft != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _productReft = snapshotData['productReft'] as DocumentReference?;
    _rating = castToType<double>(snapshotData['rating']);
    _comment = snapshotData['comment'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('product_rating');

  static Stream<ProductRatingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductRatingRecord.fromSnapshot(s));

  static Future<ProductRatingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductRatingRecord.fromSnapshot(s));

  static ProductRatingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductRatingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductRatingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductRatingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductRatingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductRatingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductRatingRecordData({
  DocumentReference? userRef,
  DocumentReference? productReft,
  double? rating,
  String? comment,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'productReft': productReft,
      'rating': rating,
      'comment': comment,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductRatingRecordDocumentEquality
    implements Equality<ProductRatingRecord> {
  const ProductRatingRecordDocumentEquality();

  @override
  bool equals(ProductRatingRecord? e1, ProductRatingRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.productReft == e2?.productReft &&
        e1?.rating == e2?.rating &&
        e1?.comment == e2?.comment;
  }

  @override
  int hash(ProductRatingRecord? e) => const ListEquality()
      .hash([e?.userRef, e?.productReft, e?.rating, e?.comment]);

  @override
  bool isValidKey(Object? o) => o is ProductRatingRecord;
}
