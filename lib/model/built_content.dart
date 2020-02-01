import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'built_content.g.dart';

abstract class BuiltContent implements Built<BuiltContent, BuiltContentBuilder> {
  String get pillar;
  BuiltList<Collection> get collections;

  BuiltContent._();

  factory BuiltContent([updates(BuiltContentBuilder b)]) = _$BuiltContent;

  static Serializer<BuiltContent> get serializer => _$builtContentSerializer;
}

abstract class Pillar implements Built<Pillar, PillarBuilder> {
  String get pillar;

  Pillar._();
  factory Pillar([updates(PillarBuilder b)]) = _$Pillar;
  static Serializer<Pillar> get serializer => _$pillarSerializer;
}

abstract class Collection implements Built<Collection, CollectionBuilder> {
  @nullable
  String get uuid;
  @nullable
  String get title;
  @nullable
  String get pillar;

  Collection._();
  factory Collection([updates(CollectionBuilder b)]) = _$Collection;
  static Serializer<Collection> get serializer => _$collectionSerializer;
}
