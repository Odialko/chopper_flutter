

//import 'package:bfi_api_content/model/pillar_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

import 'collection_model.dart';

part 'built_content.g.dart';

abstract class BuiltContent implements Built<BuiltContent, BuiltContentBuilder> {

  String get pillar;
//  List<CollectionModel> get collection;
//

//  PillarModel get pillar;
//  BuiltList<String> get collection;
//  BuiltList<CollectionModel> get collection;

  BuiltContent._();

  factory BuiltContent([updates(BuiltContentBuilder b)]) = _$BuiltContent;

  static Serializer<BuiltContent> get serializer => _$builtContentSerializer;
}

abstract class PillarModel implements Built<PillarModel, PillarModelBuilder> {
  String get pillar;

  PillarModel._();
  factory PillarModel([updates(PillarModelBuilder b)]) = _$PillarModel;
  static Serializer<PillarModel> get serializer => _$pillarModelSerializer;
}