import 'package:bfi_api_content/model/collection_model.dart';
import 'package:bfi_api_content/model/pillar_model.dart';

class ContentModel {
  PillarModel pillar;
  CollectionModel collection;

  ContentModel(this.pillar, this.collection);
}