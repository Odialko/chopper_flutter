import 'package:bfi_api_content/model/pillar_model.dart';

import 'collection_model.dart';

class Collection {
  PillarModel pillar;
  List<CollectionModel> collection;

  Collection(this.pillar, this.collection);
}