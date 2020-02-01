import 'package:bfi_api_content/data/post_api_service.dart';
import 'package:bfi_api_content/model/built_content.dart';
import 'package:built_collection/built_collection.dart';

class ContentRepository {

  static final ContentRepository _singleton = new ContentRepository._internal();
  ContentRepository._internal();
  static ContentRepository get instance => _singleton;

  Future <BuiltList<Collection>> loadCollections(String url) async {
    final client = PostApiService.create();
    final response = await client.getPillar(url);

    return response.body.collections;
  }
}
