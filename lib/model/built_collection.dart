//library built_collection;
//
//import 'package:bfi_api_content/model/collection.dart';
//import 'package:built_value/built_value.dart';
//import 'package:built_collection/built_collection.dart';
//import 'package:built_value/serializer.dart';
//
//part 'built_collection.g.dart';
//
//abstract class BuiltCollection implements Built<BuiltCollection, BuiltCollectionBuilder> {
//  String get pillar;
//  BuiltList<Collection> get collection;
//
//  BuiltCollection._();
//
//  factory BuiltCollection([updates(BuiltCollectionBuilder b)]) = _$BuiltCollection;
//
//  static Serializer<BuiltCollection> get serializer => _$builtCollectionSerializer;
//}
//
