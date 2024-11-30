import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductRecord extends FirestoreRecord {
  ProductRecord._(
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

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "categoryRef" field.
  DocumentReference? _categoryRef;
  DocumentReference? get categoryRef => _categoryRef;
  bool hasCategoryRef() => _categoryRef != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "providerRef" field.
  DocumentReference? _providerRef;
  DocumentReference? get providerRef => _providerRef;
  bool hasProviderRef() => _providerRef != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "collectionRef" field.
  DocumentReference? _collectionRef;
  DocumentReference? get collectionRef => _collectionRef;
  bool hasCollectionRef() => _collectionRef != null;

  // "sizes" field.
  List<String>? _sizes;
  List<String> get sizes => _sizes ?? const [];
  bool hasSizes() => _sizes != null;

  // "color" field.
  List<String>? _color;
  List<String> get color => _color ?? const [];
  bool hasColor() => _color != null;

  // "favorite" field.
  bool? _favorite;
  bool get favorite => _favorite ?? false;
  bool hasFavorite() => _favorite != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _categoryRef = snapshotData['categoryRef'] as DocumentReference?;
    _status = snapshotData['status'] as String?;
    _providerRef = snapshotData['providerRef'] as DocumentReference?;
    _images = getDataList(snapshotData['images']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _collectionRef = snapshotData['collectionRef'] as DocumentReference?;
    _sizes = getDataList(snapshotData['sizes']);
    _color = getDataList(snapshotData['color']);
    _favorite = snapshotData['favorite'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('product');

  static Stream<ProductRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductRecord.fromSnapshot(s));

  static Future<ProductRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductRecord.fromSnapshot(s));

  static ProductRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductRecordData({
  String? name,
  String? description,
  double? price,
  DocumentReference? categoryRef,
  String? status,
  DocumentReference? providerRef,
  int? quantity,
  DocumentReference? collectionRef,
  bool? favorite,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'categoryRef': categoryRef,
      'status': status,
      'providerRef': providerRef,
      'quantity': quantity,
      'collectionRef': collectionRef,
      'favorite': favorite,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductRecordDocumentEquality implements Equality<ProductRecord> {
  const ProductRecordDocumentEquality();

  @override
  bool equals(ProductRecord? e1, ProductRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.categoryRef == e2?.categoryRef &&
        e1?.status == e2?.status &&
        e1?.providerRef == e2?.providerRef &&
        listEquality.equals(e1?.images, e2?.images) &&
        e1?.quantity == e2?.quantity &&
        e1?.collectionRef == e2?.collectionRef &&
        listEquality.equals(e1?.sizes, e2?.sizes) &&
        listEquality.equals(e1?.color, e2?.color) &&
        e1?.favorite == e2?.favorite;
  }

  @override
  int hash(ProductRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.price,
        e?.categoryRef,
        e?.status,
        e?.providerRef,
        e?.images,
        e?.quantity,
        e?.collectionRef,
        e?.sizes,
        e?.color,
        e?.favorite
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductRecord;
}
