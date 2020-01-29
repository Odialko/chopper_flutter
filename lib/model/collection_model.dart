import 'package:bfi_api_content/model/pillar_model.dart';

class CollectionModel {
  String uuid;
  String title;
  PillarModel pillar;

  CollectionModel(this.uuid, this.title, this.pillar);
}