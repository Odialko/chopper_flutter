import 'package:bfi_api_content/model/collection.dart';
import 'package:bfi_api_content/model/pillar_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_model.g.dart';

@JsonSerializable()
class PostModel {
  String pillar;
  List collection;

  PostModel(this.pillar, this.collection);

  factory PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);
  Map<String, dynamic> toJson() => _$PostModelToJson(this);
}