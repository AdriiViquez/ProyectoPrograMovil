// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ProductToCartStruct extends FFFirebaseStruct {
  ProductToCartStruct({
    int? quantity,
    double? basePrice,
    double? priceWithIVA,
    DocumentReference? productRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _quantity = quantity,
        _basePrice = basePrice,
        _priceWithIVA = priceWithIVA,
        _productRef = productRef,
        super(firestoreUtilData);

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  // "basePrice" field.
  double? _basePrice;
  double get basePrice => _basePrice ?? 0.0;
  set basePrice(double? val) => _basePrice = val;

  void incrementBasePrice(double amount) => basePrice = basePrice + amount;

  bool hasBasePrice() => _basePrice != null;

  // "priceWithIVA" field.
  double? _priceWithIVA;
  double get priceWithIVA => _priceWithIVA ?? 0.0;
  set priceWithIVA(double? val) => _priceWithIVA = val;

  void incrementPriceWithIVA(double amount) =>
      priceWithIVA = priceWithIVA + amount;

  bool hasPriceWithIVA() => _priceWithIVA != null;

  // "productRef" field.
  DocumentReference? _productRef;
  DocumentReference? get productRef => _productRef;
  set productRef(DocumentReference? val) => _productRef = val;

  bool hasProductRef() => _productRef != null;

  static ProductToCartStruct fromMap(Map<String, dynamic> data) =>
      ProductToCartStruct(
        quantity: castToType<int>(data['quantity']),
        basePrice: castToType<double>(data['basePrice']),
        priceWithIVA: castToType<double>(data['priceWithIVA']),
        productRef: data['productRef'] as DocumentReference?,
      );

  static ProductToCartStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductToCartStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'quantity': _quantity,
        'basePrice': _basePrice,
        'priceWithIVA': _priceWithIVA,
        'productRef': _productRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'basePrice': serializeParam(
          _basePrice,
          ParamType.double,
        ),
        'priceWithIVA': serializeParam(
          _priceWithIVA,
          ParamType.double,
        ),
        'productRef': serializeParam(
          _productRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static ProductToCartStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductToCartStruct(
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        basePrice: deserializeParam(
          data['basePrice'],
          ParamType.double,
          false,
        ),
        priceWithIVA: deserializeParam(
          data['priceWithIVA'],
          ParamType.double,
          false,
        ),
        productRef: deserializeParam(
          data['productRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['product'],
        ),
      );

  @override
  String toString() => 'ProductToCartStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductToCartStruct &&
        quantity == other.quantity &&
        basePrice == other.basePrice &&
        priceWithIVA == other.priceWithIVA &&
        productRef == other.productRef;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([quantity, basePrice, priceWithIVA, productRef]);
}

ProductToCartStruct createProductToCartStruct({
  int? quantity,
  double? basePrice,
  double? priceWithIVA,
  DocumentReference? productRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductToCartStruct(
      quantity: quantity,
      basePrice: basePrice,
      priceWithIVA: priceWithIVA,
      productRef: productRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductToCartStruct? updateProductToCartStruct(
  ProductToCartStruct? productToCart, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    productToCart
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductToCartStructData(
  Map<String, dynamic> firestoreData,
  ProductToCartStruct? productToCart,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (productToCart == null) {
    return;
  }
  if (productToCart.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && productToCart.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productToCartData =
      getProductToCartFirestoreData(productToCart, forFieldValue);
  final nestedData =
      productToCartData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = productToCart.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductToCartFirestoreData(
  ProductToCartStruct? productToCart, [
  bool forFieldValue = false,
]) {
  if (productToCart == null) {
    return {};
  }
  final firestoreData = mapToFirestore(productToCart.toMap());

  // Add any Firestore field values
  productToCart.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductToCartListFirestoreData(
  List<ProductToCartStruct>? productToCarts,
) =>
    productToCarts
        ?.map((e) => getProductToCartFirestoreData(e, true))
        .toList() ??
    [];
