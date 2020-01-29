import 'dart:convert';

import 'package:bfi_api_content/model/collection.dart';
import 'package:bfi_api_content/model/pillar_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';


part 'built_collection.g.dart';

abstract class BuiltCollection implements Built<BuiltCollection, BuiltCollectionBuilder> {
  String get pillar => pillar;
  BuiltList get collection => collection;

//  PillarModel get pillar => pillar;
//  Collection get collection => collection;

  BuiltCollection._();

  factory BuiltCollection([updates(BuiltCollectionBuilder b)]) = _$BuiltCollection;

//  String toJson() {
//    return json.encode(serializers.serializeWith(BuildCollection.serializer, this));
//  }
//
//  static BuildCollection fromJson(String jsonString) {
//    return serializers.deserializeWith(BuildCollection.serializer, json.decode(jsonString));
//  }

  static Serializer<BuiltCollection> get serializer => _$builtCollectionSerializer;
}