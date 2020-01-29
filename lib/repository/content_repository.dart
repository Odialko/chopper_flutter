import 'package:bfi_api_content/model/collection_model.dart';
import 'package:bfi_api_content/model/content_model.dart';
import 'package:bfi_api_content/model/pillar_model.dart';

class ContentRepository {
  //ContentModel data from apiService
  final ContentModel contentModel;
//  print(ApiService.create());
//  final response = await ApiService.getPillar();


  ContentRepository._privateConstructor(this.contentModel);

  static final ContentRepository _instance =
      ContentRepository._privateConstructor(ContentModel(
          PillarModel('rentals'),
          CollectionModel(
              'id', 'title', PillarModel('pillar')))); //data from api

  static ContentRepository get instance {
    return _instance;
  }

  CollectionModel loadCollection() {
    return contentModel.collection;
  }
}
